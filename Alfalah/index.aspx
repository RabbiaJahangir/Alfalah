<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Alfalah.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12  col-md-8 col-md-offset-2">
                <h1 class="text-center " style="color: red">Selection Interview Sheet</h1>

                <form id="candidateForm" runat="server" method="post" enableviewstate="false">

                    <table class="table table-hover">

                        <tr>
                            <td>
                                <label for="candName"><b>Name of candidate:</b></label></td>
                            <td>
                                <input class="form-control" id="candName" required type="text" name="candName" />


                            </td>
                        </tr>


                        <tr>
                            <td>
                                <label for="loc"><b>Proposed location and assignment:</b></label>
                            </td>
                            <td>
                                <input class="form-control" id="loc" required type="text" name="loc" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="educ"><b>Highest educational qualification & institution:</b></label>

                            </td>
                            <td>
                                <input class="form-control" id="educ" required type="text" name="educ" />

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="exp"><b>Length of experience: Banking/professional/other/total:</b></label>

                            </td>
                            <td>
                                <asp:TextBox ID="exp" name="exp" runat="server" CssClass="form-control" required type="number" min="0" max="100"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="exp" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="exp"
                                    ErrorMessage="Enter experience between 0 to 100" MaximumValue="100"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="last"><b>Last employer & assignment:</b></label>

                            </td>
                            <td>
                                <input class="form-control" id="last" required type="text" name="last" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label for="relative"><b>Relatives or friends working in Bank Alfalah Ltd:</b></label>
                            </td>
                            <td>
                                <input class="form-control" id="relative" required type="text" name="relative" /></td>
                        </tr>
                        <tr>
                            <td>
                                <label for="recent"><b>Details of existing (or most recent) salary:</b></label>

                            </td>
                            <td>
                                <asp:TextBox ID="recent" name="recent" runat="server" CssClass="form-control" required type="number" min="0" max="999999"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="recent" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="recent"
                                    ErrorMessage="Enter recent salary between 0 to 999999" MaximumValue="999999"
                                    MinimumValue="0" Type="Integer">   
                                </asp:RangeValidator>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label for="salExp"><b>Salary expected in Bank Alfalah Ltd:</b></label>
                            </td>
                            <td>
                                <asp:TextBox ID="salExp" name="salExp" runat="server" CssClass="form-control" required type="number" min="0" max="999999" EnableViewState="false"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="salExp" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="salExp"
                                    ErrorMessage="Enter salary between 0 to 999999" MaximumValue="999999"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label for="liab">
                                    <b>Liability with present employer: Nature of Loan/Current
								outstanding:</b></label>
                            </td>
                            <td>
                                <div class="radio-inline">
                                    <input id="liab" required type="radio" name="liab" value="Yes" checked="checked" />Yes

                                </div>
                                <div class="radio-inline">
                                    <input id="liab" type="radio" name="liab" value="No" />No
                                </div>


                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label for="remarks"><b>Remarks:(How will it be adjusted):</b> </label>
                            </td>
                            <td>
                                <input class="form-control" id="remarks" required type="text" name="remarks" />
                            </td>
                        </tr>

                    </table>


                    <table class="table">
                        <tr>
                            <td colspan="2" class="text-center">
                                <h4>(0-2 Low; 3-4 Average; 5-6 Good; 7-8 V.Good; 9-10
							Outstanding)</h4>
                            </td>
                            <td><b>Score</b>
                            </td>
                        </tr>

                        <tr>
                            <td>1
                            </td>
                            <td>
                                <b>Appearance & outward personality </b>
                                <br />
                                Appropriately dressed & presentable. Appropriate body language facial expressions.
                            </td>


                            <td>

                                <asp:TextBox ID="n1" name="n1" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n1" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n1"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>
                        </tr>

                        <tr>
                            <td>2
                            </td>
                            <td>
                                <b>Educational background </b>
                                <br />
                                Suitably qualified (both academically & professionally) for job in question, from reputable
							institutions.
                            </td>


                            <td>
                                <asp:TextBox ID="n2" name="n2" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n2" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n2"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator></td>
                        </tr>

                        <tr>
                            <td>3
                            </td>
                            <td>
                                <b>Intellectual disposition & general awareness </b>
                                <br />
                                Articulate, intelligent, aware of domestic & int'l current affairs/issues. Versatile with
							arts, crafts, sports & hobbies.
                            </td>


                            <td>
                                <asp:TextBox ID="n3" name="n3" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n3" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n3"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator></td>

                        </tr>

                        <tr>
                            <td>4
                            </td>
                            <td>
                                <b>Leadership potential </b>
                                <br />
                                Visionary strategic thinker & planner skills. Is a self motivated team player. Believes in
							win-win outcomes. 
                            </td>

                            <td>
                                <asp:TextBox ID="n4" name="n4" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n4" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n4"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>5
                            </td>
                            <td>
                                <b>Adherence to principles & values</b>
                                <br />
                                Committed to upholding of basic principles and values. No prejudices based on gender,
							background or beliefs.
                            </td>

                            <td>
                                <asp:TextBox ID="n5" Font-Names="n5" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n5" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n5"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>6
                            </td>
                            <td>
                                <b>IT skills </b>
                                <br />
                                Fluent with MS Office applications. Usage of internet, e-mail & other web based
							technologies. Typing speed.
                            </td>

                            <td>
                                <asp:TextBox ID="n6" name="n6" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n6" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n6"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>7
                            </td>
                            <td>
                                <b>Communication & inter-personal skills</b>
                                <br />
                                Fluent & articulate in verbal & written communication, public speaking & presentation. Sound
							inter-personal skills.
                            </td>

                            <td>
                                <asp:TextBox ID="n7" name="n7" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n7" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n7"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>8
                            </td>
                            <td>
                                <b>Commitment, enthusiasm, hard work & attention to quality</b>
                                <br />
                                Committed to hard work. Prepared to work long hours if necessary. Quality conscious.
							Generally enthusiastic.
                            </td>

                            <td>
                                <asp:TextBox ID="n8" name="n8" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n8" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n8"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>9
                            </td>
                            <td>
                                <b>Assertiveness, self confidence & self discipline</b>
                                <br />
                                Sure of him/her self. Clear about personal & organizational goals & objectives. Generally
							well organized.
                            </td>

                            <td>
                                <asp:TextBox ID="n9" name="n9" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n9" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n9"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>10</td>
                            <td>
                                <b>Versatility, innovativeness & creative thinking </b>
                                <br />
                                Has variety of experience in academic, job related or voluntary work. Exposure to sports,
							hobbies, travel, languages.
                            </td>

                            <td>
                                <asp:TextBox ID="n10" name="n10" runat="server" CssClass="form-control" required type="number" min="0" max="10"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n10" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n10"
                                    ErrorMessage="Enter your score between 0 to 10" MaximumValue="10"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <!-- <tr>
                            <td colspan="2" class="text-center"><b>Total for candidates without relavant previous
							experience </b>
                            </td>

                            <td style="color: red"><b>---</b>
                            </td>

                        </tr> -->

                        <tr>
                            <td>11
                            </td>
                            <td>
                                <b>Professional knowledge </b>
                                <br />
                                In banking generally or in any specific area(i.e; IT, Accounting etc) as required by job in
							question.
                            </td>

                            <td>
                                <asp:TextBox ID="n11" name="n11" runat="server" CssClass="form-control" required type="number" min="0" max="25"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n11" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n11"
                                    ErrorMessage="Enter your score between 0 to 25" MaximumValue="25"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <tr>
                            <td>12
                            </td>
                            <td>
                                <b>Relavance of previous experience </b>
                                <br />
                                To specific job requirement & in related areas. (For senior Positions, sound & varied
							experience in all major areas)

                            </td>
                            <td>
                                <asp:TextBox ID="n12" name="n12" runat="server" CssClass="form-control" required type="number" min="0" max="25"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="n12" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="n12"
                                    ErrorMessage="Enter your score between 0 to 25" MaximumValue="25"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                        </tr>

                        <!--<tr>
                            <td colspan="2" style="text-align: center"><b>Total for experienced candidates </b>
                            </td>

                            <td style="color: red"><b>---</b>
                            </td>

                        </tr> -->


                    </table>


                    <textarea class="form-control" name="interviewersComments" rows="4" placeholder="Interviewer's comments on suitability of candidate for the job under consideration." ></textarea>


                    <table class="table">

                        <tr>
                            <td colspan="2" style="text-align: center"><b>Proposed gross salary</b>
                                <asp:TextBox ID="propGrossSal" name="propGrossSal" runat="server" CssClass="form-control" required type="number" min="100" max="999999"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="propGrossSal" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="propGrossSal"
                                    ErrorMessage="Enter proposed salary between 100 to 999999" MaximumValue="999999"
                                    MinimumValue="100" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                            <td colspan="2" style="text-align: center"><b>Salary range</b>
                                <asp:TextBox ID="salRange" name="salRange" runat="server" CssClass="form-control" required type="number" min="100" max="999999"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="salRange" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="salRange"
                                    ErrorMessage="Enter salary range between 100 to 999999" MaximumValue="999999"
                                    MinimumValue="100" Type="Integer">
   
                                </asp:RangeValidator>

                            </td>

                            <td colspan="2" style="text-align: center"><b>Probationary period</b>
                                <asp:TextBox ID="probPeriod" name="probPeriod" runat="server" CssClass="form-control" required type="number" min="0" max="25"></asp:TextBox>
                                <asp:RegularExpressionValidator ControlToValidate="probPeriod" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator runat="server" ControlToValidate="probPeriod"
                                    ErrorMessage="Enter Probationary period" MaximumValue="25"
                                    MinimumValue="0" Type="Integer">
   
                                </asp:RangeValidator>
                            </td>


                        </tr>



                        <tr>
                            <td colspan="4" style="text-align: center"><b>Interviewer's name designation & signature</b>

                            </td>
                            <td>
                                <input class="form-control" id="intName" required type="text" name="intName" />


                            </td>
                        </tr>




                    </table>
                    <br />
                    <br />

                 
                    <asp:Button ID="submitButton" OnClick="catchData" runat="server" CssClass="btn btn-default col-md-2 col-md-offset-5 col-xs-12" Text="Submit" type="submit" />
                    <br />
                    <br />
                    <br />
                    <p style="text-align: center; color: red;"><b>&copy; Bank Alfalah Limited. All Rights Reserved.</b></p>
                    <br />
                </form>


            </div>
        </div>
    </div>

</body>
</html>
