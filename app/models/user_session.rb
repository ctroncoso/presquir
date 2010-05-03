class UserSession < Authlogic::Session::Base
  authenticate_with Ejecutiva
end

