<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;Book Name:&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server" BorderColor="#B69CF3" 
        BorderStyle="Dashed"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Search" runat="server" Text="Search" />
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
    EnableModelValidation="True" EmptyDataText="NO Record found" 
        HorizontalAlign="Left" CssClass="mytable" GridLines="None" Width="500px" 
        AllowPaging="True">
    <Columns>
        <asp:BoundField DataField="BookName" HeaderText="BookName" 
            SortExpression="BookName" NullDisplayText="---" />
        <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
            ReadOnly="True" SortExpression="BookID" NullDisplayText="---" />
        <asp:BoundField DataField="Autors" HeaderText="Autors" 
            SortExpression="Autors" NullDisplayText="---" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" 
            NullDisplayText="---" />
        <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" 
            NullDisplayText="---" />
        <asp:BoundField DataField="Publication" HeaderText="Publication" 
            SortExpression="Publication" NullDisplayText="---" />
        <asp:BoundField DataField="count" HeaderText="count" SortExpression="count" />
    </Columns>
</asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString1 %>" 
    
        SelectCommand="SELECT [BookName], [BookID], [Autors], [Year], [Topic], [Publication], [count] FROM [Book]" 
        FilterExpression="BookName='{0}'">
    <FilterParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="prnbookname" 
            PropertyName="Text" />
    </FilterParameters>
</asp:SqlDataSource>
<br />
<br />
<br />
<br />
</asp:Content>

