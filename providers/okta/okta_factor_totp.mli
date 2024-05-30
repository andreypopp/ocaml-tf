(** Allows you to manage the time-based one-time password (TOTP) factors. A time-based one-time password (TOTP) is a
		temporary passcode that is generated for user authentication. Examples of TOTP include hardware authenticators and
		mobile app authenticators.
		
Once saved, the settings cannot be changed (except for the 'name' field). Any other change would force resource
recreation. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_factor_totp

val okta_factor_totp :
  ?clock_drift_interval:float prop ->
  ?hmac_algorithm:string prop ->
  ?id:string prop ->
  ?otp_length:float prop ->
  ?shared_secret_encoding:string prop ->
  ?time_step:float prop ->
  name:string prop ->
  unit ->
  okta_factor_totp

val yojson_of_okta_factor_totp : okta_factor_totp -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  clock_drift_interval : float prop;
  hmac_algorithm : string prop;
  id : string prop;
  name : string prop;
  otp_length : float prop;
  shared_secret_encoding : string prop;
  time_step : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?clock_drift_interval:float prop ->
  ?hmac_algorithm:string prop ->
  ?id:string prop ->
  ?otp_length:float prop ->
  ?shared_secret_encoding:string prop ->
  ?time_step:float prop ->
  name:string prop ->
  string ->
  t

val make :
  ?clock_drift_interval:float prop ->
  ?hmac_algorithm:string prop ->
  ?id:string prop ->
  ?otp_length:float prop ->
  ?shared_secret_encoding:string prop ->
  ?time_step:float prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
