%dw 2.0
output application/json
---
{
"errors":
	[{
	"transaction_id": vars.transaction_id,
	"correlationId": correlationId,
	"code": vars.httpStatus,
	"type": error.errorType.asString,
	"notificationType": vars.notif_type default 'CH_Integration_CustomNotification',
	"detail": vars.error_detail
	}]
}