(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_authentication_profile = {
  authentication_profile_content : string prop;
      (** authentication_profile_content *)
  authentication_profile_name : string prop;
      (** authentication_profile_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_redshift_authentication_profile *)

type t = {
  authentication_profile_content : string prop;
  authentication_profile_name : string prop;
  id : string prop;
}

let aws_redshift_authentication_profile ?id
    ~authentication_profile_content ~authentication_profile_name
    __resource_id =
  let __resource_type = "aws_redshift_authentication_profile" in
  let __resource =
    ({
       authentication_profile_content;
       authentication_profile_name;
       id;
     }
      : aws_redshift_authentication_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_authentication_profile __resource);
  let __resource_attributes =
    ({
       authentication_profile_content =
         Prop.computed __resource_type __resource_id
           "authentication_profile_content";
       authentication_profile_name =
         Prop.computed __resource_type __resource_id
           "authentication_profile_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
