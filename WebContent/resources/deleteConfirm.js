            function deleteConfirm() {
               var retVal = confirm("Do you want to Delete this Member ?");
               if( retVal == true ) {
                  document.write ("User wants to continue!");
                  return true;
               } else {
                  document.write ("User does not want to continue!");
                  return false;
               }
            }