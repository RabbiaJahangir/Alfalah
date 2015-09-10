using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Alfalah
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void catchData(object sender, EventArgs e)
        {
            string name = Request.Form["candName"];
            string location = Request.Form["loc"];
            string education = Request.Form["educ"];
            int pastExperience = Int32.Parse(Request.Form["exp"]);
            string pastEmployer = Request.Form["last"];
            string relative = Request.Form["relative"];
            int recentSalary = Int32.Parse(Request.Form["recent"]);
            int expectedSalary = Int32.Parse(Request.Form["salExp"]);
            string liabilityWithEmployer = Request.Form["liab"];
            string remarks = Request.Form["remarks"];

            //iterating over score fields

            int[] score = new int[12];
            int n = 1;
            foreach (var s in Request.Form["n" + n])
            {
                score[n - 1] = Convert.ToInt32(s);
                n++;
            }

            string interviewersComments = Request.Form["interviewersComments"];
            int proGrossSalary = Int32.Parse(Request.Form["propGrossSal"]);
            int salaryRange = Int32.Parse(Request.Form["salRange"]);
            int probPeriod = Int32.Parse(Request.Form["probPeriod"]);
            string interviewersSigAndDesig = Request.Form["intName"];

            ClearTextBoxes(Page);
            ExecuteInsert(name, location, education, pastExperience, pastEmployer, relative, recentSalary, expectedSalary, liabilityWithEmployer, remarks, score, interviewersComments, proGrossSalary, salaryRange, probPeriod, interviewersSigAndDesig);
        }

        protected void ClearTextBoxes(Control p1)
        {
            foreach (Control ctrl in p1.Controls)
            {
                if (ctrl is TextBox)
                {
                    TextBox t = ctrl as TextBox;

                    if (t != null)
                    {
                        t.Text = String.Empty;
                    }
                }
                else
                {
                    if (ctrl.Controls.Count > 0)
                    {
                        ClearTextBoxes(ctrl);
                    }
                }
            }
        }

        public string GetConnectionString()
        {
            //sets the connection string from your web config file "ConnString" is the name of your Connection String
            return System.Configuration.ConfigurationManager.ConnectionStrings["MyConsString"].ConnectionString;
        }

        private void ExecuteInsert(string name, string location, string education, int pastExperience, string pastEmployer, string relative, int recentSal, int expectedSalary, string liabilityWithEmployer, string remarks, int[] score, string interviewersComments, int proGrossSalary, int salaryRange, int probPeriod, string interviewersSigAndDesig)
        {
            SqlConnection conn = new SqlConnection(GetConnectionString());
            string sql = "INSERT INTO Sheet (NameOfCandidate, ProposedLocationAndAssignment, HighestEducationalAndQualification, LengthOfExperience, LastEmployerAndAssignment, RelativesOrFriendsWorkingInBankAlfalahLtd, DetailsOfExistingSalary, SalaryExpectedInBankAlfalah, LiabilityWithPresentEmployer, Remarks,Q1, Q2,Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, InterviewersComments, PropGrossSalary, SalaryRange, ProbPeriod, InterviewersNameDesigSign) VALUES "
                        + " (@NameOfCandidate,@ProposedLocationAndAssignment,@HighestEducationalAndQualification,@LengthOfExperience,@LastEmployerAndAssignment,@RelativesOrFriendsWorkingInBankAlfalahLtd,@DetailsOfExistingSalary,@SalaryExpectedInBankAlfalah,@LiabilityWithPresentEmployer,@Remarks,@Q1,@Q2,@Q3,@Q4,@Q5,@Q6,@Q7,@Q8,@Q9,@Q10,@Q11,@Q12,@InterviewersComments,@PropGrossSalary,@SalaryRange,@ProbPeriod,@InterviewersNameDesigSign)";

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlParameter[] param = new SqlParameter[27];
                //param[0] = new SqlParameter("@id", SqlDbType.Int, 20);
                param[0] = new SqlParameter("@NameOfCandidate", SqlDbType.NVarChar, 50);
                param[1] = new SqlParameter("@ProposedLocationAndAssignment", SqlDbType.NVarChar, 50);
                param[2] = new SqlParameter("@HighestEducationalAndQualification", SqlDbType.NVarChar, 50);
                param[3] = new SqlParameter("@LengthOfExperience", SqlDbType.Int, 20);
                param[4] = new SqlParameter("@LastEmployerAndAssignment", SqlDbType.NVarChar, 50);
                param[5] = new SqlParameter("@RelativesOrFriendsWorkingInBankAlfalahLtd", SqlDbType.NVarChar, 50);
                param[6] = new SqlParameter("@DetailsOfExistingSalary", SqlDbType.Int, 20);
                param[7] = new SqlParameter("@SalaryExpectedInBankAlfalah", SqlDbType.Int, 20);
                param[8] = new SqlParameter("@LiabilityWithPresentEmployer", SqlDbType.NVarChar, 50);
                param[9] = new SqlParameter("@Remarks", SqlDbType.NVarChar, 50);
                param[10] = new SqlParameter("@Q1", SqlDbType.Int, 20);
                param[11] = new SqlParameter("@Q2", SqlDbType.Int, 20);
                param[12] = new SqlParameter("@Q3", SqlDbType.Int, 20);
                param[13] = new SqlParameter("@Q4", SqlDbType.Int, 20);
                param[14] = new SqlParameter("@Q5", SqlDbType.Int, 20);
                param[15] = new SqlParameter("@Q6", SqlDbType.Int, 20);
                param[16] = new SqlParameter("@Q7", SqlDbType.Int, 20);
                param[17] = new SqlParameter("@Q8", SqlDbType.Int, 20);
                param[18] = new SqlParameter("@Q9", SqlDbType.Int, 20);
                param[19] = new SqlParameter("@Q10", SqlDbType.Int, 20);
                param[20] = new SqlParameter("@Q11", SqlDbType.Int, 20);
                param[21] = new SqlParameter("@Q12", SqlDbType.Int, 20);
                param[22] = new SqlParameter("@InterviewersComments", SqlDbType.NVarChar, 50);
                param[23] = new SqlParameter("@PropGrossSalary", SqlDbType.NVarChar, 50);
                param[24] = new SqlParameter("@SalaryRange", SqlDbType.NVarChar, 50);
                param[25] = new SqlParameter("@ProbPeriod", SqlDbType.NVarChar, 50);
                param[26] = new SqlParameter("@InterviewersNameDesigSign", SqlDbType.NVarChar, 50);





                param[0].Value = name;
                param[1].Value = location;
                param[2].Value = education;
                param[3].Value = pastExperience;
                param[4].Value = pastEmployer;
                param[5].Value = relative;
                param[6].Value = recentSal;
                param[7].Value = expectedSalary;
                param[8].Value = liabilityWithEmployer;
                param[9].Value = liabilityWithEmployer;

                for (int i = 0; i < score.Length; i++)
                {
                    param[10 + i].Value = score[i];
                }
                param[22].Value = interviewersComments;
                param[23].Value = proGrossSalary;
                param[24].Value = salaryRange;
                param[25].Value = probPeriod;
                param[26].Value = interviewersSigAndDesig;



                for (int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }

        }

    }
}