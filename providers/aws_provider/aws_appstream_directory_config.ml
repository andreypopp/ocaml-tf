(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_appstream_directory_config__service_account_credentials = {
  account_name : string;  (** account_name *)
  account_password : string;  (** account_password *)
}
[@@deriving yojson_of]
(** aws_appstream_directory_config__service_account_credentials *)

type aws_appstream_directory_config = {
  directory_name : string;  (** directory_name *)
  organizational_unit_distinguished_names : string list;
      (** organizational_unit_distinguished_names *)
  service_account_credentials :
    aws_appstream_directory_config__service_account_credentials list;
}
[@@deriving yojson_of]
(** aws_appstream_directory_config *)

let aws_appstream_directory_config ~directory_name
    ~organizational_unit_distinguished_names
    ~service_account_credentials __resource_id =
  let __resource_type = "aws_appstream_directory_config" in
  let __resource =
    {
      directory_name;
      organizational_unit_distinguished_names;
      service_account_credentials;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_directory_config __resource);
  ()
