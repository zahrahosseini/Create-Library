<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" 
    EnableModelValidation="True" CssClass="mytable" EmptyDataText="---" 
        GridLines="None" Width="700px">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Select" Text="انتخاب"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
            ReadOnly="True" SortExpression="BookID" NullDisplayText="---" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" 
            SortExpression="BookName" NullDisplayText="---" />
            <asp:BoundField DataField="Autors" HeaderText="Autors" 
            SortExpression="Autors" NullDisplayText="---" />
            <asp:TemplateField HeaderText="TopicName" SortExpression="TopicName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TopicName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("TopicName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PublicationName" 
            SortExpression="PublicationName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PublicationName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PublicationName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" 
                NullDisplayText="---" />
            <asp:TemplateField HeaderText="count" SortExpression="count">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("count") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("count") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
        <SelectedRowStyle BackColor="Cornsilk" Font-Bold="True" HorizontalAlign="Left" 
            VerticalAlign="Middle" Wrap="True" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString1 %>" 
    
    SelectCommand="SELECT Topic.TopicName, Publication.PublicationName, Book.Year, Book.Autors, Book.BookID, Book.BookName, Book.count FROM Book INNER JOIN Publication ON Book.Publication = Publication.PublicationID INNER JOIN Topic ON Book.Topic = Topic.TopicID">
    </asp:SqlDataSource>
    <br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    DataKeyNames="BookID" DataSourceID="SqlDataSource3" 
    EnableModelValidation="True" Height="50px" style="margin-right: 2px" 
    Width="400px" CellPadding="2" CssClass="mytable" GridLines="None">
    <Fields>
        <asp:BoundField DataField="BookName" HeaderText="BookName" 
            SortExpression="BookName" />
        <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
            ReadOnly="True" SortExpression="BookID" />
        <asp:BoundField DataField="Autors" HeaderText="Autors" 
            SortExpression="Autors" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="TopicName" HeaderText="TopicName" 
            SortExpression="TopicName" />
        <asp:BoundField DataField="PublicationName" HeaderText="PublicationName" 
            SortExpression="PublicationName" />
        <asp:BoundField DataField="count" HeaderText="count" SortExpression="count" />
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="Edit" 
                    PostBackUrl='<%# Eval("BookID", "~/Default4.aspx?BID={0}") %>' Text="Edit"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" 
                    PostBackUrl='<%# Bind("BookID", "~/Default6.aspx") %>'></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" 
                    PostBackUrl='<%# Bind("BookID", "~/Default7.aspx?BID={0}") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Fields>
    <RowStyle Width="300px" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Library_DBConnectionString1 %>" 
    DeleteCommand="DELETE FROM [Book] WHERE [BookID] = @BookID" 
    InsertCommand="INSERT INTO [Book] ([BookName], [Autors], [Topic], [Publication], [Year]) VALUES (@BookName, @Autors, @Topic, @Publication, @Year)" 
    SelectCommand="SELECT Book.BookName, Book.BookID, Book.Autors, Book.Year, Topic.TopicName, Publication.PublicationName, Book.count FROM Book INNER JOIN Publication ON Book.Publication = Publication.PublicationID INNER JOIN Topic ON Book.Topic = Topic.TopicID WHERE (Book.BookID = @BookID)" 
    
    UpdateCommand="UPDATE [Book] SET [BookName] = @BookName, [Autors] = @Autors, [Topic] = @Topic, [Publication] = @Publication, [Year] = @Year WHERE [BookID] = @BookID">
    <DeleteParameters>
        <asp:Parameter Name="BookID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="BookName" Type="String" />
        <asp:Parameter Name="Autors" Type="String" />
        <asp:Parameter Name="Topic" Type="Int32" />
        <asp:Parameter Name="Publication" Type="Int32" />
        <asp:Parameter Name="Year" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView2" Name="BookID" 
            PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="BookName" Type="String" />
        <asp:Parameter Name="Autors" Type="String" />
        <asp:Parameter Name="Topic" Type="Int32" />
        <asp:Parameter Name="Publication" Type="Int32" />
        <asp:Parameter Name="Year" Type="Int32" />
        <asp:Parameter Name="BookID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

