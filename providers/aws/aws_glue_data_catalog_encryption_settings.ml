(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_catalog_encryption_settings__connection_password_encryption = {
  aws_kms_key_id : string prop option; [@option]
  return_connection_password_encrypted : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       data_catalog_encryption_settings__connection_password_encryption) ->
  ()

let yojson_of_data_catalog_encryption_settings__connection_password_encryption
    =
  (function
   | {
       aws_kms_key_id = v_aws_kms_key_id;
       return_connection_password_encrypted =
         v_return_connection_password_encrypted;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_return_connection_password_encrypted
         in
         ("return_connection_password_encrypted", arg) :: bnds
       in
       let bnds =
         match v_aws_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_catalog_encryption_settings__connection_password_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_catalog_encryption_settings__connection_password_encryption

[@@@deriving.end]

type data_catalog_encryption_settings__encryption_at_rest = {
  catalog_encryption_mode : string prop;
  sse_aws_kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : data_catalog_encryption_settings__encryption_at_rest) -> ()

let yojson_of_data_catalog_encryption_settings__encryption_at_rest =
  (function
   | {
       catalog_encryption_mode = v_catalog_encryption_mode;
       sse_aws_kms_key_id = v_sse_aws_kms_key_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sse_aws_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sse_aws_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_catalog_encryption_mode
         in
         ("catalog_encryption_mode", arg) :: bnds
       in
       `Assoc bnds
    : data_catalog_encryption_settings__encryption_at_rest ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_data_catalog_encryption_settings__encryption_at_rest

[@@@deriving.end]

type data_catalog_encryption_settings = {
  connection_password_encryption :
    data_catalog_encryption_settings__connection_password_encryption
    list;
  encryption_at_rest :
    data_catalog_encryption_settings__encryption_at_rest list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_catalog_encryption_settings) -> ()

let yojson_of_data_catalog_encryption_settings =
  (function
   | {
       connection_password_encryption =
         v_connection_password_encryption;
       encryption_at_rest = v_encryption_at_rest;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_catalog_encryption_settings__encryption_at_rest
             v_encryption_at_rest
         in
         ("encryption_at_rest", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_data_catalog_encryption_settings__connection_password_encryption
             v_connection_password_encryption
         in
         ("connection_password_encryption", arg) :: bnds
       in
       `Assoc bnds
    : data_catalog_encryption_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_catalog_encryption_settings

[@@@deriving.end]

type aws_glue_data_catalog_encryption_settings = {
  catalog_id : string prop option; [@option]
  id : string prop option; [@option]
  data_catalog_encryption_settings :
    data_catalog_encryption_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_data_catalog_encryption_settings) -> ()

let yojson_of_aws_glue_data_catalog_encryption_settings =
  (function
   | {
       catalog_id = v_catalog_id;
       id = v_id;
       data_catalog_encryption_settings =
         v_data_catalog_encryption_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_catalog_encryption_settings
             v_data_catalog_encryption_settings
         in
         ("data_catalog_encryption_settings", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catalog_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glue_data_catalog_encryption_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_data_catalog_encryption_settings

[@@@deriving.end]

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
