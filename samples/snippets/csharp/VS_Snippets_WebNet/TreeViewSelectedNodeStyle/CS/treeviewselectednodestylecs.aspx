<!-- <Snippet1> -->

<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    void Select_Change(Object sender, EventArgs e)
    {

        Message.Text = "You selected: " + LinksTreeView.SelectedNode.Text;

    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >

    <head runat="server">
    <title>TreeView SelectedNodeStyle Example</title>
</head>
<body>
        <form id="form1" runat="server">
        
            <h3>TreeView SelectedNodeStyle Example</h3>

            <asp:TreeView id="LinksTreeView"
                Font-Names= "Arial"
                ForeColor="Blue"
                SelectedNodeStyle-ForeColor="Green"
                SelectedNodeStyle-VerticalPadding="0"
                OnSelectedNodeChanged="Select_Change"   
                runat="server">
                 
                <LevelStyles>
                
                    <asp:TreeNodeStyle ChildNodesPadding="10" 
                        Font-Bold="true" 
                        Font-Size="12pt" 
                        ForeColor="DarkGreen"/>
                    <asp:TreeNodeStyle ChildNodesPadding="5" 
                        Font-Bold="true" 
                        Font-Size="10pt"/>
                    <asp:TreeNodeStyle ChildNodesPadding="5" 
                        Font-UnderLine="true" 
                        Font-Size="10pt"/>
                    <asp:TreeNodeStyle ChildNodesPadding="10" 
                        Font-Size="8pt"/>
                         
                </LevelStyles>
                 
                <Nodes>
                
                    <asp:TreeNode Text="Table of Contents"
                        SelectAction="None">
                         
                        <asp:TreeNode Text="Chapter One">
                        
                            <asp:TreeNode Text="Section 1.0">
                            
                                <asp:TreeNode Text="Topic 1.0.1"/>
                                <asp:TreeNode Text="Topic 1.0.2"/>
                                <asp:TreeNode Text="Topic 1.0.3"/>
                            
                            </asp:TreeNode>
                            
                            <asp:TreeNode Text="Section 1.1">
                            
                                <asp:TreeNode Text="Topic 1.1.1"/>
                                <asp:TreeNode Text="Topic 1.1.2"/>
                                <asp:TreeNode Text="Topic 1.1.3"/>
                                <asp:TreeNode Text="Topic 1.1.4"/>
                            
                            </asp:TreeNode>
                        
                        </asp:TreeNode>
                        
                        <asp:TreeNode Text="Chapter Two">
                        
                            <asp:TreeNode Text="Section 2.0">
                            
                                <asp:TreeNode Text="Topic 2.0.1"/>
                                <asp:TreeNode Text="Topic 2.0.2"/>
                            
                            </asp:TreeNode>
                        
                        </asp:TreeNode>
                        
                    </asp:TreeNode>
                    <asp:TreeNode Text="Appendix A" />
                    <asp:TreeNode Text="Appendix B" />
                    <asp:TreeNode Text="Appendix C" />
                
                </Nodes>
                
            </asp:TreeView>
            
            <br /><br />
            
            <asp:Label id="Message" runat="server"/>
            
        </form>
    </body>
</html>

<!-- </Snippet1> -->
