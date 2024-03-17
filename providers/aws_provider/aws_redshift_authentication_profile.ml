(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_authentication_profile = {
  authentication_profile_content : string;
      (** authentication_profile_content *)
  authentication_profile_name : string;
      (** authentication_profile_name *)
}
[@@deriving yojson_of]
(** aws_redshift_authentication_profile *)

let aws_redshift_authentication_profile
    ~authentication_profile_content ~authentication_profile_name
    __resource_id =
  let __resource_type = "aws_redshift_authentication_profile" in
  let __resource =
    { authentication_profile_content; authentication_profile_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_authentication_profile __resource);
  ()
