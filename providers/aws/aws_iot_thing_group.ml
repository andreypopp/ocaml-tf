(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties__attribute_payload = {
  attributes : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : properties__attribute_payload) -> ()

let yojson_of_properties__attribute_payload =
  (function
   | { attributes = v_attributes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : properties__attribute_payload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_properties__attribute_payload

[@@@deriving.end]

type properties = {
  description : string prop option; [@option]
  attribute_payload : properties__attribute_payload list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : properties) -> ()

let yojson_of_properties =
  (function
   | {
       description = v_description;
       attribute_payload = v_attribute_payload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute_payload then bnds
         else
           let arg =
             (yojson_of_list yojson_of_properties__attribute_payload)
               v_attribute_payload
           in
           let bnd = "attribute_payload", arg in
           bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_properties

[@@@deriving.end]

type metadata__root_to_parent_groups = {
  group_arn : string prop;
  group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata__root_to_parent_groups) -> ()

let yojson_of_metadata__root_to_parent_groups =
  (function
   | { group_arn = v_group_arn; group_name = v_group_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_arn in
         ("group_arn", arg) :: bnds
       in
       `Assoc bnds
    : metadata__root_to_parent_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata__root_to_parent_groups

[@@@deriving.end]

type metadata = {
  creation_date : string prop;
  parent_group_name : string prop;
  root_to_parent_groups : metadata__root_to_parent_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       creation_date = v_creation_date;
       parent_group_name = v_parent_group_name;
       root_to_parent_groups = v_root_to_parent_groups;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_root_to_parent_groups then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_metadata__root_to_parent_groups)
               v_root_to_parent_groups
           in
           let bnd = "root_to_parent_groups", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parent_group_name
         in
         ("parent_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_date in
         ("creation_date", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type aws_iot_thing_group = {
  id : string prop option; [@option]
  name : string prop;
  parent_group_name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  properties : properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_thing_group) -> ()

let yojson_of_aws_iot_thing_group =
  (function
   | {
       id = v_id;
       name = v_name;
       parent_group_name = v_parent_group_name;
       tags = v_tags;
       tags_all = v_tags_all;
       properties = v_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_properties then bnds
         else
           let arg =
             (yojson_of_list yojson_of_properties) v_properties
           in
           let bnd = "properties", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_group_name", arg in
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
       `Assoc bnds
    : aws_iot_thing_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_thing_group

[@@@deriving.end]

let properties__attribute_payload ?attributes () :
    properties__attribute_payload =
  { attributes }

let properties ?description ?(attribute_payload = []) () : properties
    =
  { description; attribute_payload }

let aws_iot_thing_group ?id ?parent_group_name ?tags ?tags_all
    ?(properties = []) ~name () : aws_iot_thing_group =
  { id; name; parent_group_name; tags; tags_all; properties }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  metadata : metadata list prop;
  name : string prop;
  parent_group_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : float prop;
}

let make ?id ?parent_group_name ?tags ?tags_all ?(properties = [])
    ~name __id =
  let __type = "aws_iot_thing_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       parent_group_name =
         Prop.computed __type __id "parent_group_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_group
        (aws_iot_thing_group ?id ?parent_group_name ?tags ?tags_all
           ~properties ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parent_group_name ?tags ?tags_all
    ?(properties = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parent_group_name ?tags ?tags_all ~properties ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
