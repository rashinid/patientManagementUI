$(document).ready(function() {
	
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
	
	const refundButton='<button type="button" class="btn btn-danger" onClick="refund( @id )">Refund</button>';
	 $.get('/HealthCare/api/payment/view',function(data){
		 var html='';
		 data.forEach(row=>{
			 debugger
			var r=paymentTr
			.replace('@type',row.type)
			.replace('@amount',row.amount)
			.replace('@appointmentId',row.appointmentId)
			.replace('@paymentDate',row.paymentDate)
			.replace('@refundAmount',row.refundAmount)
			.replace('@refunded',row.refunded)
			.replace('@onlinePaymentReferenceNumber',row.onlinePaymentReferenceNumber);
			
			if(!row.refunded){
				var br=refundButton.replace('@id',row.appointmentId);
			r=	r.replace('@action',br)
			}else{
			r=	r.replace('@action','-')
			}
			
			html+=r;
		 });
		 $('#payments_details').html(html);
	 });
});

function refund(id){
	alert(x);
}