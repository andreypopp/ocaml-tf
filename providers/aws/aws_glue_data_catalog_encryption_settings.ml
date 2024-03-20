(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?catalog_id ?id ~data_catalog_encryption_settings __id =
  let __type = "aws_glue_data_catalog_encryption_settings" in
  let __attrs =
    ({
       catalog_id = Prop.computed __type __id "catalog_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_data_catalog_encryption_settings
        (aws_glue_data_catalog_encryption_settings ?catalog_id ?id
           ~data_catalog_encryption_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?id
    ~data_catalog_encryption_settings __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?id ~data_catalog_encryption_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
