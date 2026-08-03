object DM: TDM
  Height = 517
  Width = 629
  PixelsPerInch = 144
  object Collector: TTMSFNCLocalizationCollector
    TranslationFiles = <
      item
        Name = 'hr'
        FileName = 'translations.hr.json'
        Roots.Strings = (
          'Forms.FormDepartments'
          'Forms.FormEmployees'
          'Forms.FormPayroll'
          'Forms.FormLeaveRequests')
      end
      item
        Name = 'invoice'
        FileName = 'translations.invoice.json'
        Roots.Strings = (
          'Forms.FormPurchaseOrders'
          'Forms.FormShipments'
          'Forms.FormStock'
          'Forms.FormSuppliers')
      end
      item
        Name = 'sales'
        FileName = 'translations.sales.json'
        Roots.Strings = (
          'Forms.FormCustomers'
          'Forms.FormInvoices'
          'Forms.FormOrders'
          'Forms.FormProducts')
      end>
    Left = 200
    Top = 192
  end
  object Localizer: TTMSFNCLocalizationLocalizer
    TranslationFolder = '.'
    Left = 296
    Top = 56
  end
  object StringCatalog: TTMSFNCLocalizationStringCatalog
    Strings = <
      item
        Name = 'HR.Sales'
        Value = 'Sales'
      end
      item
        Name = 'HR.Engineering'
        Value = 'Engineering'
      end
      item
        Name = 'HR.Finance'
        Value = 'Finance'
      end
      item
        Name = 'HR.Marketing'
        Value = 'Marketing'
      end
      item
        Name = 'HR.Support'
        Value = 'Support'
      end
      item
        Name = 'HR.AllDepartments'
        Value = 'All departments'
      end
      item
        Name = 'HR.AccountManager'
        Value = 'Account Manager'
      end
      item
        Name = 'HR.SoftwareDeveloper'
        Value = 'Software Developer'
      end
      item
        Name = 'HR.Controller'
        Value = 'Controller'
      end
      item
        Name = 'HR.SupportEngineer'
        Value = 'Support Engineer'
      end
      item
        Name = 'HR.SalesRep'
        Value = 'Sales Representative'
      end
      item
        Name = 'HR.QA'
        Value = 'QA Engineer'
      end
      item
        Name = 'HR.Vacation'
        Value = 'Vacation'
      end
      item
        Name = 'HR.SickLeave'
        Value = 'Sick leave'
      end
      item
        Name = 'HR.UnpaidLeave'
        Value = 'Unpaid leave'
      end
      item
        Name = 'HR.ParentalLeave'
        Value = 'Parental leave'
      end
      item
        Name = 'HR.Approved'
        Value = 'Approved'
      end
      item
        Name = 'HR.Pending'
        Value = 'Pending'
      end
      item
        Name = 'HR.Rejected'
        Value = 'Rejected'
      end
      item
        Name = 'HR.AddDepartment'
        Value = 'Adding departments is not available in this demo.'
      end
      item
        Name = 'HR.RemoveDepartment'
        Value = 'Removing departments is not available in this demo.'
      end
      item
        Name = 'HR.SaveDepartments'
        Value = 'The department has been saved.'
      end
      item
        Name = 'HR.Export'
        Value = 'Exporting is not available in this demo.'
      end
      item
        Name = 'HR.SelectEmployee'
        Value = 'Please select an employee and a leave type.'
      end
      item
        Name = 'Inv.NewItem'
        Value = 'New item'
      end
      item
        Name = 'Inv.Bolts'
        Value = 'Steel bolts M8'
      end
      item
        Name = 'Inv.Sheet'
        Value = 'Aluminium sheet 2mm'
      end
      item
        Name = 'Inv.Gasket'
        Value = 'Rubber gasket 40mm'
      end
      item
        Name = 'Inv.Wire'
        Value = 'Copper wire 1.5mm'
      end
      item
        Name = 'Inv.Bearing'
        Value = 'Bearing 6204'
      end
      item
        Name = 'Inv.Pump'
        Value = 'Hydraulic pump P-20'
      end
      item
        Name = 'Inv.InTransit'
        Value = 'In transit'
      end
      item
        Name = 'Inv.OutForDelivery'
        Value = 'Out for delivery'
      end
      item
        Name = 'Inv.Registered'
        Value = 'Registered'
      end
      item
        Name = 'Inv.Delivered'
        Value = 'Delivered'
      end
      item
        Name = 'Inv.PickedUp'
        Value = 'Picked up'
      end
      item
        Name = 'Inv.AllWarehouses'
        Value = 'All warehouses'
      end
      item
        Name = 'Inv.MainWarehouse'
        Value = 'Main warehouse'
      end
      item
        Name = 'Inv.NorthDepot'
        Value = 'North depot'
      end
      item
        Name = 'Inv.SouthDepot'
        Value = 'South depot'
      end
      item
        Name = 'Inv.SelectLine'
        Value = 'Please select a line first.'
      end
      item
        Name = 'Inv.PurchaseSubmitted'
        Value = 'The purchase order has been submitted.'
      end
      item
        Name = 'Inv.OnlineTrack'
        Value = 'Online tracking is not available in this demo.'
      end
      item
        Name = 'Inv.SupplierSaved'
        Value = 'The supplier has been saved.'
      end
      item
        Name = 'Sales.Berlin'
        Value = 'Berlin'
      end
      item
        Name = 'Sales.Paris'
        Value = 'Paris'
      end
      item
        Name = 'Sales.London'
        Value = 'London'
      end
      item
        Name = 'Sales.Seattle'
        Value = 'Seattle'
      end
      item
        Name = 'Sales.Amsterdam'
        Value = 'Amsterdam'
      end
      item
        Name = 'Sales.Madrid'
        Value = 'Madrid'
      end
      item
        Name = 'Sales.Germany'
        Value = 'Germany'
      end
      item
        Name = 'Sales.France'
        Value = 'France'
      end
      item
        Name = 'Sales.UK'
        Value = 'United Kingdom'
      end
      item
        Name = 'Sales.US'
        Value = 'United States'
      end
      item
        Name = 'Sales.Netherlands'
        Value = 'Netherlands'
      end
      item
        Name = 'Sales.Spain'
        Value = 'Spain'
      end
      item
        Name = 'Sales.Active'
        Value = 'Active'
      end
      item
        Name = 'Sales.Inactive'
        Value = 'Inactive'
      end
      item
        Name = 'Sales.AllCustomers'
        Value = 'All customers'
      end
      item
        Name = 'Sales.Shipped'
        Value = 'Shipped'
      end
      item
        Name = 'Sales.Open'
        Value = 'Open'
      end
      item
        Name = 'Sales.Paid'
        Value = 'Paid'
      end
      item
        Name = 'Sales.Beverages'
        Value = 'Beverages'
      end
      item
        Name = 'Sales.OfficeSupplies'
        Value = 'Office supplies'
      end
      item
        Name = 'Sales.Hardware'
        Value = 'Hardware'
      end
      item
        Name = 'Sales.Software'
        Value = 'Software'
      end
      item
        Name = 'Sales.Sample'
        Value = 'Sample product'
      end
      item
        Name = 'Sales.Search'
        Value = 'Searching is not implemented in this demo.'
      end
      item
        Name = 'Sales.AddCustomer'
        Value = 'Adding customers is not implemented in this demo.'
      end
      item
        Name = 'Sales.EditCustomer'
        Value = 'Editing customers is not implemented in this demo.'
      end
      item
        Name = 'Sales.DeleteCustomer'
        Value = 'Deleting customers is not implemented in this demo.'
      end
      item
        Name = 'Sales.Print'
        Value = 'Printing is not available in this demo.'
      end
      item
        Name = 'Sales.SendEmail'
        Value = 'Sending e-mail is not available in this demo.'
      end
      item
        Name = 'Sales.EnterDescription'
        Value = 'Enter the product description here.'
      end
      item
        Name = 'Sales.ProductSaved'
        Value = 'The product has been saved.'
      end
      item
        Name = 'HR.AddEmployee'
        Value = 'Adding employees is not available in this demo.'
      end
      item
        Name = 'HR.SelectRequest'
        Value = 'Please select a request first.'
      end
      item
        Name = 'HR.Employee'
        Value = 'Employee'
      end
      item
        Name = 'HR.Type'
        Value = 'Type'
      end
      item
        Name = 'HR.From'
        Value = 'From'
      end
      item
        Name = 'HR.To'
        Value = 'To'
      end
      item
        Name = 'HR.Status'
        Value = 'Status'
      end
      item
        Name = 'HR.GrossSalary'
        Value = 'Gross salary'
      end
      item
        Name = 'HR.Tax'
        Value = 'Tax'
      end
      item
        Name = 'HR.NetSalary'
        Value = 'Net salary'
      end
      item
        Name = 'Inv.Item'
        Value = 'Item'
      end
      item
        Name = 'Inv.Quantity'
        Value = 'Quantity'
      end
      item
        Name = 'Inv.UnitPrice'
        Value = 'Unit price'
      end
      item
        Name = 'Inv.LineTotal'
        Value = 'Line total'
      end
      item
        Name = 'Inv.Shipment'
        Value = 'Shipment'
      end
      item
        Name = 'Inv.Carrier'
        Value = 'Carrier'
      end
      item
        Name = 'Inv.ShipDate'
        Value = 'Ship date'
      end
      item
        Name = 'Inv.Status'
        Value = 'Status'
      end
      item
        Name = 'Inv.Warehouse'
        Value = 'Warehouse'
      end
      item
        Name = 'Inv.OnHand'
        Value = 'On hand'
      end
      item
        Name = 'Inv.Reserved'
        Value = 'Reserved'
      end
      item
        Name = 'Inv.ReorderLevel'
        Value = 'Reorder level'
      end
      item
        Name = 'Sales.Name'
        Value = 'Name'
      end
      item
        Name = 'Sales.City'
        Value = 'City'
      end
      item
        Name = 'Sales.Country'
        Value = 'Country'
      end
      item
        Name = 'Sales.Phone'
        Value = 'Phone'
      end
      item
        Name = 'Sales.Status'
        Value = 'Status'
      end
      item
        Name = 'Sales.OrderNo'
        Value = 'Order no'
      end
      item
        Name = 'Sales.Date'
        Value = 'Date'
      end
      item
        Name = 'Sales.Customer'
        Value = 'Customer'
      end
      item
        Name = 'Sales.Total'
        Value = 'Total'
      end
      item
        Name = 'HR.Name'
        Value = 'Name'
      end
      item
        Name = 'HR.Department'
        Value = 'Department'
      end
      item
        Name = 'HR.Position'
        Value = 'Position'
      end
      item
        Name = 'HR.HireDate'
        Value = 'Hire date'
      end
      item
        Name = 'HR.Email'
        Value = 'E-mail'
      end>
    Left = 104
    Top = 56
  end
end
