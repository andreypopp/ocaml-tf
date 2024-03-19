(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data_catalog_encryption_settings__connection_password_encryption = {
  aws_kms_key_id : string prop option; [@option]
      (** aws_kms_key_id *)
  return_connection_password_encrypted : bool prop;
      (** return_connection_password_encrypted *)
}
[@@deriving yojson_of]
(** data_catalog_encryption_settings__connection_password_encryption *)

type data_catalog_encryption_settings__encryption_at_rest = {
  catalog_encryption_mode : string prop;
      (** catalog_encryption_mode *)
  sse_aws_kms_key_id : string prop option; [@option]
      (** sse_aws_kms_key_id *)
}
[@@deriving yojson_of]
(** data_catalog_encryption_settings__encryption_at_rest *)

type data_catalog_encryption_settings = {
  connection_password_encryption :
    data_catalog_encryption_settings__connection_password_encryption
    list;
  encryption_at_rest :
    data_catalog_encryption_settings__encryption_at_rest list;
}
[@@deriving yojson_of]
(** data_catalog_encryption_settings *)

type aws_glue_data_catalog_encryption_settings = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  id : string prop option; [@option]  (** id *)
  data_catalog_encryption_settings :
    data_catalog_encryption_settings list;
}
[@@deriving yojson_of]
(** aws_glue_data_catalog_encryption_settings *)

let data_catalog_encryption_settings__connection_password_encryption
    ?aws_kms_key_id ~return_connection_password_encrypted () :
    data_catalog_encryption_settings__connection_password_encryption
    =
  { aws_kms_key_id; return_connection_password_encrypted }

let data_catalog_encryption_settings__encryption_at_rest
    ?sse_aws_kms_key_id ~catalog_encryption_mode () :
    data_catalog_encryption_settings__encryption_at_rest =
  { catalog_encryption_mode; sse_aws_kms_key_id }

let data_catalog_encryption_settings ~connection_password_encryption
    ~encryption_at_rest () : data_catalog_encryption_settings =
  { connection_password_encryption; encryption_at_rest }

let aws_glue_data_catalog_encryption_settings ?catalog_id ?id
    ~data_catalog_encryption_settings () :
    aws_glue_data_catalog_encryption_settings =
  { catalog_id; id; data_catalog_encryption_settings }

type t = { catalog_id : string prop; id : string prop }

let register ?tf_module ?catalog_id ?id
    ~data_catalog_encryption_settings __resource_id =
  let __resource_type =
    "aws_glue_data_catalog_encryption_settings"
  in
  let __resource =
    aws_glue_data_catalog_encryption_settings ?catalog_id ?id
      ~data_catalog_encryption_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_data_catalog_encryption_settings __resource);
  let __resource_attributes =
    ({
       catalog_id =
         Prop.computed __resource_type __resource_id "catalog_id";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
