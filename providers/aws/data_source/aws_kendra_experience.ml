(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__user_identity_configuration = {
  identity_attribute_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__user_identity_configuration) -> ()

let yojson_of_configuration__user_identity_configuration =
  (function
   | { identity_attribute_name = v_identity_attribute_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_attribute_name
         in
         ("identity_attribute_name", arg) :: bnds
       in
       `Assoc bnds
    : configuration__user_identity_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__user_identity_configuration

[@@@deriving.end]

type configuration__content_source_configuration = {
  data_source_ids : string prop list;
  direct_put_content : bool prop;
  faq_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__content_source_configuration) -> ()

let yojson_of_configuration__content_source_configuration =
  (function
   | {
       data_source_ids = v_data_source_ids;
       direct_put_content = v_direct_put_content;
       faq_ids = v_faq_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_faq_ids
         in
         ("faq_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_direct_put_content
         in
         ("direct_put_content", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_data_source_ids
         in
         ("data_source_ids", arg) :: bnds
       in
       `Assoc bnds
    : configuration__content_source_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__content_source_configuration

[@@@deriving.end]

type configuration = {
  content_source_configuration :
    configuration__content_source_configuration list;
  user_identity_configuration :
    configuration__user_identity_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       content_source_configuration = v_content_source_configuration;
       user_identity_configuration = v_user_identity_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__user_identity_configuration
             v_user_identity_configuration
         in
         ("user_identity_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__content_source_configuration
             v_content_source_configuration
         in
         ("content_source_configuration", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type endpoints = {
  endpoint : string prop;
  endpoint_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | { endpoint = v_endpoint; endpoint_type = v_endpoint_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type aws_kendra_experience = {
  experience_id : string prop;
  id : string prop option; [@option]
  index_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_experience) -> ()

let yojson_of_aws_kendra_experience =
  (function
   | {
       experience_id = v_experience_id;
       id = v_id;
       index_id = v_index_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_id in
         ("index_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_experience_id in
         ("experience_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_kendra_experience -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_experience

[@@@deriving.end]

let aws_kendra_experience ?id ~experience_id ~index_id () :
    aws_kendra_experience =
  { experience_id; id; index_id }

type t = {
  arn : string prop;
  configuration : configuration list prop;
  created_at : string prop;
  description : string prop;
  endpoints : endpoints list prop;
  error_message : string prop;
  experience_id : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
  updated_at : string prop;
}

let make ?id ~experience_id ~index_id __id =
  let __type = "aws_kendra_experience" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       configuration = Prop.computed __type __id "configuration";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       endpoints = Prop.computed __type __id "endpoints";
       error_message = Prop.computed __type __id "error_message";
       experience_id = Prop.computed __type __id "experience_id";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_experience
        (aws_kendra_experience ?id ~experience_id ~index_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~experience_id ~index_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~experience_id ~index_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
