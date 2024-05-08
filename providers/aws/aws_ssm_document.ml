(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attachments_source = {
  key : string prop;
  name : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachments_source) -> ()

let yojson_of_attachments_source =
  (function
   | { key = v_key; name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : attachments_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attachments_source

[@@@deriving.end]

type parameter = {
  default_value : string prop;
  description : string prop;
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter) -> ()

let yojson_of_parameter =
  (function
   | {
       default_value = v_default_value;
       description = v_description;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_default_value in
         ("default_value", arg) :: bnds
       in
       `Assoc bnds
    : parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter

[@@@deriving.end]

type aws_ssm_document = {
  content : string prop;
  document_format : string prop option; [@option]
  document_type : string prop;
  id : string prop option; [@option]
  name : string prop;
  permissions : (string * string prop) list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_type : string prop option; [@option]
  version_name : string prop option; [@option]
  attachments_source : attachments_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_document) -> ()

let yojson_of_aws_ssm_document =
  (function
   | {
       content = v_content;
       document_format = v_document_format;
       document_type = v_document_type;
       id = v_id;
       name = v_name;
       permissions = v_permissions;
       tags = v_tags;
       tags_all = v_tags_all;
       target_type = v_target_type;
       version_name = v_version_name;
       attachments_source = v_attachments_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_attachments_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attachments_source)
               v_attachments_source
           in
           let bnd = "attachments_source", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "permissions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_document_type in
         ("document_type", arg) :: bnds
       in
       let bnds =
         match v_document_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_format", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : aws_ssm_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_document

[@@@deriving.end]

let attachments_source ?name ~key ~values () : attachments_source =
  { key; name; values }

let aws_ssm_document ?document_format ?id ?permissions ?tags
    ?tags_all ?target_type ?version_name ?(attachments_source = [])
    ~content ~document_type ~name () : aws_ssm_document =
  {
    content;
    document_format;
    document_type;
    id;
    name;
    permissions;
    tags;
    tags_all;
    target_type;
    version_name;
    attachments_source;
  }

type t = {
  tf_name : string;
  arn : string prop;
  content : string prop;
  created_date : string prop;
  default_version : string prop;
  description : string prop;
  document_format : string prop;
  document_type : string prop;
  document_version : string prop;
  hash : string prop;
  hash_type : string prop;
  id : string prop;
  latest_version : string prop;
  name : string prop;
  owner : string prop;
  parameter : parameter list prop;
  permissions : (string * string) list prop;
  platform_types : string list prop;
  schema_version : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_type : string prop;
  version_name : string prop;
}

let make ?document_format ?id ?permissions ?tags ?tags_all
    ?target_type ?version_name ?(attachments_source = []) ~content
    ~document_type ~name __id =
  let __type = "aws_ssm_document" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       content = Prop.computed __type __id "content";
       created_date = Prop.computed __type __id "created_date";
       default_version = Prop.computed __type __id "default_version";
       description = Prop.computed __type __id "description";
       document_format = Prop.computed __type __id "document_format";
       document_type = Prop.computed __type __id "document_type";
       document_version =
         Prop.computed __type __id "document_version";
       hash = Prop.computed __type __id "hash";
       hash_type = Prop.computed __type __id "hash_type";
       id = Prop.computed __type __id "id";
       latest_version = Prop.computed __type __id "latest_version";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       parameter = Prop.computed __type __id "parameter";
       permissions = Prop.computed __type __id "permissions";
       platform_types = Prop.computed __type __id "platform_types";
       schema_version = Prop.computed __type __id "schema_version";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_type = Prop.computed __type __id "target_type";
       version_name = Prop.computed __type __id "version_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_document
        (aws_ssm_document ?document_format ?id ?permissions ?tags
           ?tags_all ?target_type ?version_name ~attachments_source
           ~content ~document_type ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?document_format ?id ?permissions ?tags
    ?tags_all ?target_type ?version_name ?(attachments_source = [])
    ~content ~document_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?document_format ?id ?permissions ?tags ?tags_all
      ?target_type ?version_name ~attachments_source ~content
      ~document_type ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
