<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
    HeaderText="ERROR(S):" />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    DataKeyNames="BookID" DataSourceID="SqlDataSource3" 
    EnableModelValidation="True" Height="50px" style="margin-right: 0px; margin-bottom: 0px;" 
    Width="400px" DefaultMode="Edit" CssClass="mytable">
    <EditRowStyle Width="400px" />
    <FieldHeaderStyle Font-Bold="True" Width="120px" />
    <Fields>
        <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
            ReadOnly="True" SortExpression="BookID" />
        <asp:TemplateField HeaderText="BookName" SortExpression="BookName">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookName") %>' 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Book Name should not be empty">(*)</asp:RequiredFieldValidator>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("BookName") %>' 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox11" Display="Dynamic" 
                    ErrorMessage="Book Name should not be empty">(*)</asp:RequiredFieldValidator>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("BookName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Topic Name" 
            SortExpression="Topic">
            <EditItemTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource4" DataTextField="TopicName" 
                    DataValueField="TopicID" SelectedValue='<%# Bind("Topic") %>'>
                    <asp:ListItem Value="-1">---</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" 
                    ErrorMessage="please select a topic" Font-Bold="True" Operator="NotEqual" 
                    ValueToCompare="-1">(*)</asp:CompareValidator>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:DropDownList ID="DropDownList11" runat="server" 
                    AppendDataBoundItems="True" DataSourceID="SqlDataSource4" 
                    DataTextField="TopicName" DataValueField="TopicID" 
                    SelectedValue='<%# Bind("Topic") %>'>
                    <asp:ListItem Value="-1">---</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="DropDownList11" Display="Dynamic" 
                    ErrorMessage="please select a topic" Font-Bold="True" Operator="NotEqual" 
                    ValueToCompare="-1">(*)</asp:CompareValidator>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Topic") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Autors" SortExpression="Autors">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Autors") %>' 
                    Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Please Use Format AXX" ValidationExpression="[A]\d{1,2}">(*)</asp:RegularExpressionValidator>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("Autors") %>' 
                    Width="150px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="TextBox22" Display="Dynamic" 
                    ErrorMessage="Please Use Format AXX" ValidationExpression="[A]\d{1,2}">(*)</asp:RegularExpressionValidator>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Autors") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Year" SortExpression="Year">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Year") %>' 
                    Width="150px"></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Year") %>' 
                    Width="150px"></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Year") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Publication" SortExpression="Publication">
            <EditItemTemplate>
                <asp:DropDownList ID="DropDownList11" runat="server" 
                    AppendDataBoundItems="True" DataSourceID="SqlDataSource5" 
                    DataTextField="PublicationName" DataValueField="PublicationID" 
                    SelectedValue='<%# Bind("Publication") %>'>
                    <asp:ListItem Value="-1">---</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="DropDownList11" Display="Dynamic" 
                    ErrorMessage="please select a topic" Font-Bold="True" Operator="NotEqual" 
                    ValueToCompare="-1">(*)</asp:CompareValidator>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:DropDownList ID="DropDownList12" runat="server" 
                    AppendDataBoundItems="True" DataSourceID="SqlDataSource5" 
                    DataTextField="PublicationName" DataValueField="PublicationID" 
                    SelectedValue='<%# Bind("Publication") %>'>
                    <asp:ListItem Value="-1">---</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="DropDownList12" Display="Dynamic" 
                    ErrorMessage="please select a topic" Font-Bold="True" Operator="NotEqual" 
                    ValueToCompare="-1">(*)</asp:CompareValidator>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Publication") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="count" SortExpression="count">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("count") %>' 
                    Width="150px"></asp:TextBox>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("count") %>' 
                    Width="150px"></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("count") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowInsertButton="True" />
    </Fields>
    <HeaderStyle Font-Bold="True" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString1 %>" 
    SelectCommand="SELECT [TopicID], [TopicName] FROM [Topic]">
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString1 %>" 
    SelectCommand="SELECT [PublicationID], [PublicationName] FROM [Publication]">
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString1 %>" 
    DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" 
    InsertCommand="INSERT INTO [Book] ([BookName], [Topic], [Autors], [Year], [Publication], [count]) VALUES (@BookName, @Topic, @Autors, @Year, @Publication, @count)" 
    SelectCommand="SELECT [BookID], [BookName], [Topic], [Autors], [Year], [Publication], [count] FROM [Book] WHERE ([BookID] = @BookID)" 
    
    
    
        
        
    UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [Topic] = @Topic, [Autors] = @Autors, [Year] = @Year, [Publication] = @Publication, [count] = @count WHERE [BookID] = @BookID">
    <DeleteParameters>
        <asp:Parameter Name="BookID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="BookName" Type="String" />
        <asp:Parameter Name="Topic" Type="Int32" />
        <asp:Parameter Name="Autors" Type="String" />
        <asp:Parameter Name="Year" Type="Int32" />
        <asp:Parameter Name="Publication" Type="Int32" />
        <asp:Parameter Name="count" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="BookID" QueryStringField="BID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="BookName" Type="String" />
        <asp:Parameter Name="Topic" Type="Int32" />
        <asp:Parameter Name="Autors" Type="String" />
        <asp:Parameter Name="Year" Type="Int32" />
        <asp:Parameter Name="Publication" Type="Int32" />
        <asp:Parameter Name="count" Type="Int32" />
        <asp:Parameter Name="BookID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default3.aspx" 
        Text="Back To Show Book" />
<br />
<br />
</asp:Content>

