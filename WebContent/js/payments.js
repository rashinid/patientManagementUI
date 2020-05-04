
var pType='';
$(document).ready(function() {
	$('#payment_container').show();
	$('#refund_container').hide()
	viewData();
	
	var pOnline=$('#online_container');
	var pCard=$('#card_container');
	var pPaypal=$('#paypal_container');
	pOnline.hide();
    pCard.hide();
    pPaypal.hide();
	 $('input:radio[name=type]').change(function() {
	        if (this.value == 'online') {
	            pOnline.show();
	            pCard.hide();
	            pPaypal.hide();
	            pType='online';
	        }
	        else if (this.value == 'card') {
	        	pOnline.hide();
	            pCard.show();
	            pPaypal.hide();
	            pType='card';
	        }
	        else if (this.value == 'paypal') {
	        	pOnline.hide();
	            pCard.hide();
	            pPaypal.show();
	            pType='paypal';
	        }
	    });
	
	
});

function doPay(){
	
	debugger
	var amount=$('#p_amount').val();
	var appoId=$('#p_appo_id').val();
	var onlineRef=$('#p_online_ref').val(); 
	var cardName=$('#p_card_holder').val();
	var cardnumber=$('#p_card_number').val();
	var year=$('#p_card_y').val();
	var month=$('#p_card_m').val();
	var sec=$('#p_card_sec').val();
	var paypalRef=$('#p_paypal_ref').val();
	 
	if (pType == 'online') {
         var data=
         {
        		 amount:amount,
        		 appointmentId:appoId,
        		 onlinePaymentReferenceNumber:onlineRef
         };
         
         $.ajax({
     	    type: "POST",
     	    url: "/HealthCare/api/payment/online", 
     	    data: JSON.stringify(data),
     	    contentType: "application/json; charset=utf-8",
     	    dataType: "json",
     	    success: function(result){		 
     			if(result.status){
     				alert('payment done');
     				viewData();
     			}else{
     				alert('error');
     			}
     		},
     	    failure: function(errMsg) {
     	        alert(errMsg);
     	    }
     	});
    }
     else if (pType == 'card') {
    	  var data=
          {
         		 amount:amount,
         		 appointmentId:appoId,
         		cardNumber:cardnumber,
         		expYear:year,
         		expMonth:month,
         		cardHoldersName:cardName         				
          };
          
          $.ajax({
      	    type: "POST",
      	    url: "/HealthCare/api/payment/card", 
      	    data: JSON.stringify(data),
      	    contentType: "application/json; charset=utf-8",
      	    dataType: "json",
      	    success: function(result){		 
      			if(result.status){
      				alert('payment done');
      				viewData();
      			}else{
      				alert('error');
      			}
      		},
      	    failure: function(errMsg) {
      	        alert(errMsg);
      	    }
      	});
     }
     else if (pType == 'paypal') {
    	 var data=
         {
        		 amount:amount,
        		 appointmentId:appoId,
        		 paypalReferenceNumber:paypalRef
         };
         
         $.ajax({
     	    type: "POST",
     	    url: "/HealthCare/api/payment/paypal", 
     	    data: JSON.stringify(data),
     	    contentType: "application/json; charset=utf-8",
     	    dataType: "json",
     	    success: function(result){		 
     			if(result.status){
     				alert('payment done');
     				viewData();
     			}else{
     				alert('error');
     			}
     		},
     	    failure: function(errMsg) {
     	        alert(errMsg);
     	    }
     	});
     }
	
	
}

function viewData(){

	const paymentTr='<tr>'+
		'<td > @type </td>'+
		'<td > @amount </td>'+
		'<td > @appointmentId </td>'+
		'<td > @paymentDate </td>'+
		'<td > @refundAmount </td>'+
		'<td > @refunded </td>'+
		'<td > @onlinePaymentReferenceNumber </td>'+
		'<td> @action </td>'+
	'</tr>';
	
	const refundButton='<button type="button" class="btn btn-danger" onClick="refund( @id,@amount )">Refund</button>';
	const unrefundButton='<button type="button" class="btn btn-danger" onClick="unrefund( @id )">Unrefund</button>';
	 $.get('/HealthCare/api/payment/view',function(data){
		 var html='';
		 data.forEach(row=>{
			 
			var r=paymentTr
			.replace('@type',row.type)
			.replace('@amount',row.amount)
			.replace('@appointmentId',row.appointmentId)
			.replace('@paymentDate',row.paymentDate)
			.replace('@refundAmount',row.refundAmount)
			.replace('@refunded',row.refunded)
			.replace('@onlinePaymentReferenceNumber',row.onlinePaymentReferenceNumber);
			var actions='';
			if(!row.refunded){
			 
				actions+=	refundButton.replace('@id',row.appointmentId).replace('@amount',row.amount);
			}else{
				actions+=	 unrefundButton.replace('@id',row.appointmentId);
			}
			r=r.replace('@action',actions);
			html+=r;
		 });
		 $('#payments_details').empty();
		 $('#payments_details').html(html);
	 });
}

function refund(id,amount){
	$('#refund_container').show();
	$('#payment_container').hide();
	$('#refund_appo_id').val(id);
	$('#refund_amount').val(amount);
}

function unrefund(id){
	$.ajax({
	    type: "POST",
	    url: "/HealthCare/api/payment/un-refund", 
	    data: JSON.stringify({ appointmentId:id}),
	    contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    success: function(result){		 
			if(result.status){
				alert('Unrefunded');
				viewData();
			}else{
				alert('error');
			}
		},
	    failure: function(errMsg) {
	        alert(errMsg);
	    }
	});
}

function cancelRefund(){
	$('#refund_container').hide();
	$('#payment_container').show();
}
function doRefund(){
 
	var appoId=$('#refund_appo_id').val();
	var amount=$('#refund_amount').val();	 
	
	$.ajax({
	    type: "POST",
	    url: "/HealthCare/api/payment/refund", 
	    data: JSON.stringify({refundAmount:amount,appointmentId:appoId}),
	    contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    success: function(result){
		 
			if(result.status){
				alert('Refunded');
				$('#refund_container').hide();
				$('#payment_container').show();
				viewData();
			}else{
				alert('error');
			}
		},
	    failure: function(errMsg) {
	        alert(errMsg);
	    }
	});
	
	
}