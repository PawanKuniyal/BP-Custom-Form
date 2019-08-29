Select distinct vt.Name AS VisitTyeName,II.Name As InterimInspections,d.*,  HCL.Name AS HSSECheckList,
s.ItemNumber,
s.Quantity,
s.TagNumber,
s.UoM,
s.Description,
s.PODelivery,
s.ForecastDelivery,
s.Comment,
n.Visit,
n.Total,
n.TotalDate,
ids.Details AS InspectionDetail,
e.EmployedDescription,
e.calibrationDate,
ed.DocumentRevision,
ed.Title,
ed.Comment AS EmployeeDocComment
 from DigitalForms d 
left join VisitTypeDigitalForms v on v.DigitalForm_Id=d.Id 
left join VisitTypes vt on vt.Id=v.VisitType_Id
left join InterimInspectionDigitalForms i on i.DigitalForm_Id=d.Id
left join InterimInspections II on II.Id=i.InterimInspection_Id
left join DigitalFormHSSECheckLists df on df.DigitalForm_Id=d.Id
left join HSSECheckLists HCL on HCL.Id=df.HSSECheckList_Id
left join SupplyProgresses s on s.DigitalForms_Id=d.Id
left join NCRDetails n on n.DigitalForm_Id=d.Id
left join InspectionDetails ids on ids.DigitalForm_Id=d.Id
left join EmployedInstruments e on e.DigitalForm_Id=d.Id
left join EmployedDocuments ed on ed.DigitalForm_Id=d.Id
Order By id 
