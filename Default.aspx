<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <!--filtro fim-->
		<div class="col-sm-2 filtro">
			<div id="MainMenu">
			  <div class="list-group panel">
			    <a href="#demo3" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Regiões</a>
			    <div class="collapse" id="demo3">
			      <a href="#SubMenu1" class="list-group-item" data-toggle="collapse" data-parent="#SubMenu1">Minas Gerais<i class="fa fa-caret-down"></i></a>
			      <div class="collapse list-group-submenu" id="SubMenu1">
			        <a href="#" class="list-group-item" data-parent="#SubMenu1">Teofilo Otoni</a>
			        <a href="#" class="list-group-item" data-parent="#SubMenu1">G.Valadares</a>
			        <a href="#SubSubMenu1" class="list-group-item" data-toggle="collapse" data-parent="#SubSubMenu1">Itambacuri <i class="fa fa-caret-down"></i></a>
			    
			      </div>
			      <a href="javascript:;" class="list-group-item">São Paulo</a>
			      <a href="javascript:;" class="list-group-item">Rio de Janeiro</a>
			    </div>
			    <a href="#demo4" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Esportes</a>
			    <div class="collapse" id="demo4">
			      <a href="" class="list-group-item">Futebol</a>
			      <a href="" class="list-group-item">Ciclismo</a>
			      <a href="" class="list-group-item">Natação</a>
			    </div>
			    <a href="#demo5" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Data</a>
			    <div class="collapse" id="demo5">
			      <a href="" class="list-group-item">Hoje</a>
			      <a href="" class="list-group-item">Essa Semana </a>
			      <a href="" class="list-group-item">Semana que Vem</a>
			    </div>
			  </div>
			</div>
		</div>
		<!--filtro fim-->

		<!--conteudo fim-->
		<div class="col-sm-8  conteudo">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                ForeColor="Black" Height="190px" 
                onselectionchanged="Calendar1_SelectionChanged" Width="350px" 
                NextPrevFormat="FullMonth">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" 
                    VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                    Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="889px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                        SortExpression="ID" InsertVisible="False" />
                    <asp:BoundField DataField="titulo" HeaderText="titulo" 
                        SortExpression="titulo" />
                    <asp:BoundField DataField="conteudo" HeaderText="conteudo" 
                        SortExpression="conteudo" />
                    <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:eventSportsConnectionString %>" 
                SelectCommand="SELECT * FROM [evento] WHERE ([data] = @data)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="data" 
                        PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
    </div>
		<!--conteudo fim-->


</asp:Content>

