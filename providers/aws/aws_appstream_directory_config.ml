(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_directory_config__service_account_credentials = {
  account_name : string prop;  (** account_name *)
  account_password : string prop;  (** account_password *)
}
[@@deriving yojson_of]
(** aws_appstream_directory_config__service_account_credentials *)

type aws_appstream_directory_config = {
  directory_name : string prop;  (** directory_name *)
  id : string prop option; [@option]  (** id *)
  organizational_unit_distinguished_names : string prop list;
      (** organizational_unit_distinguished_names *)
  service_account_credentials :
    aws_appstream_directory_config__service_account_credentials list;
}
[@@deriving yojson_of]
(** aws_appstream_directory_config *)

type t = {
  created_time : string prop;
  directory_name : string prop;
  id : string prop;
  organizational_unit_distinguished_names : string list prop;
}

let aws_appstream_directory_config ?id ~directory_name
    ~organizational_unit_distinguished_names
    ~service_account_credentials __resource_id =
  let __resource_type = "aws_appstream_directory_config" in
  let __resource =
    ({
       directory_name;
       id;
       organizational_unit_distinguished_names;
       service_account_credentials;
     }
      : aws_appstream_directory_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_directory_config __resource);
  let __resource_attributes =
    ({
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       directory_name =
         Prop.computed __resource_type __resource_id "directory_name";
       id = Prop.computed __resource_type __resource_id "id";
       organizational_unit_distinguished_names =
         Prop.computed __resource_type __resource_id
           "organizational_unit_distinguished_names";
     }
      : t)
  in
  __resource_attributes
