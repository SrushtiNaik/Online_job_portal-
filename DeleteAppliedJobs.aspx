<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DeleteAppliedJobs.aspx.cs" Inherits="OnlineJobPortal.Admin.DeleteAppliedJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('../Images/big.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;">
        <div class="container-fluid pt-4 pb-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

            <h3 class="text-center">View Resume/Download Resume</h3>
            <div class="row mb-3 pt-sm-3">
                <div class="col-md-12">
                    
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" HeaderStyle-HorizontalAlign="Center"
                        EmptyDataText="No record to display..!" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" 
                        OnPageIndexChanging="GridView1_PageIndexChanging" 
                        DataKeyNames="AppliedJobId" OnRowDeleting="GridView1_RowDeleting">
                        
                        <Columns>

                            <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                             <asp:BoundField DataField="CompanyName" HeaderText="Employee/Company Name ">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                            <asp:BoundField DataField="JobTitle" HeaderText="Job Title">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                            <asp:BoundField DataField="Username" HeaderText="User Name">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                            <asp:BoundField DataField="EmailAddress" HeaderText="User Email">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                         
                        

                            <%--<asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" NavigateUrl='<%# DataBinder.Eval(Container,"DataItem.Resume","../{0}") %>'><i class="fas fa-download"></i>Download</asp:LinkButton>
                                    <asp:HyperLink ID="btnDeleteResume" runat="server" CommandName="deleteResume" CommandArgument= '<%# Eval("AppliedJobId") %>' ></asp:HyperLink>
                                    <asp:Image ID="Img" runat="server" ImageUrl="../assets/img/icon/trashIcon1.png" Height="25px"/>
                                   <asp:HiddenField ID="hdnJobID" runat="server" Value='<%# Eval("JobId") %>' Visible="false"/>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>--%>

                            

                            <asp:CommandField CausesValidation="false" HeaderText="Delete" ShowDeleteButton="true"
                                DeleteImageUrl="../assets/img/icon/trashIcon1.png" ButtonType="Image">
                                <ControlStyle Height="25px" Width="25px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>

                            <%--<asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnDeleteResume" runat="server" CommandName="deleteResume" CommandArgument= '<%# Eval("AppliedJobId") %>' >
                                        <asp:Image ID="Img" runat="server" ImageUrl="../assets/img/icon/trashIcon1.png" Height="25px"/>
                                    </asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>--%>
                        </Columns>
                        <HeaderStyle BackColor="#7200cf" ForeColor="White" />
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
