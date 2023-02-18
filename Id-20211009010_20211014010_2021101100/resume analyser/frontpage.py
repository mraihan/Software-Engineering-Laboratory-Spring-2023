import streamlit as st


def main():
    """Login App"""


st.title("Login App")
menu = ["Home", "Login App", "Signup"]
choice = st.sidebar.selectbox("Menu", menu)
if choice == "Home":
    st.subheader("Home")
elif choice == "Login":
    st.subheader("Login Section")

    username = st.sidebar.text_input("User Name")
    password = st.sidebar.text_input("Password", type='password')
    if st.sidebar.chechbox("Login"):
        if st.sidebar.button("Login"):

           # if password == '12345':


               st.success("Logged In as {}".format(username))
               task = st.selectbox("Task",["Add post","Analytics","Profiles"])
               if task == "Add post":
                  st.subheader("Add Your Post")

               elif task == "Analytics":
                  st.subheader("Analytics")
               elif task == "Profiles":
                    st.subheader("User Profiles")

        else:
           st.warning("Incorrect Username/Password")



       elif choice == "Signup":
        st.subheader("Create New Account")
        new_user=st.text_input("Username")
        new_password=st.text_input("Password",type='password')
        if st.button("Signup"):
            st.success("you have successfully created an valid account")
            st.user_info("Go to Login Menu to Login")