<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebAppInClass3.Pages.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Hey Man</h1>
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />

            <asp:RequiredFieldValidator ID="RequiredFieldStudentID" runat="server" 
                ErrorMessage="StudentID is required" 
                SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareStudentID" runat="server"
                ErrorMessage="StudentID must be greater than 0!" Operator="GreaterThan" Type="Integer"
                ValueToCompare="0" SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:CompareValidator>
            
             <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="Name" Display="None"></asp:RequiredFieldValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldCredits" runat="server" 
                ErrorMessage="Credits is required!" 
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="CreditsRange" runat="server"
                ErrorMessage="Credits out of range! (0.0 to 40.0)"
                MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RangeValidator>
            
            <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                ErrorMessage="Emergency Phone is a required field" 
                SetFocusOnError="true" ControlToValidate="Phone" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" 
                ErrorMessage="Phone is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="Phone" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="LabelStudentID" runat="server" Text="StudentID"
                     AssociatedControlID="StudentID"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="StudentID" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="LabelName" runat="server" Text="Name"
                     AssociatedControlID="Name"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="LabelCredits" runat="server" Text="Credits"
                     AssociatedControlID="Credits"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Credits" runat="server" ></asp:TextBox>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="Label4" runat="server" Text="Emergency Phone Number"
                     AssociatedControlID="Phone"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Phone" runat="server"> </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4 text-left">
            <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click">Add Student</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
            <br/><br/>
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
            <asp:GridView ID="PeopleGridView" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
