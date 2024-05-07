(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties = {
  description : string prop option; [@option]
  searchable_attributes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : properties) -> ()

let yojson_of_properties =
  (function
   | {
       description = v_description;
       searchable_attributes = v_searchable_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_searchable_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "searchable_attributes", arg in
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

type aws_iot_thing_type = {
  deprecated : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  properties : properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_thing_type) -> ()

let yojson_of_aws_iot_thing_type =
  (function
   | {
       deprecated = v_deprecated;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       properties = v_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_properties v_properties
         in
         ("properties", arg) :: bnds
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
         match v_deprecated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deprecated", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_thing_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_thing_type

[@@@deriving.end]

let properties ?description ?searchable_attributes () : properties =
  { description; searchable_attributes }

let aws_iot_thing_type ?deprecated ?id ?tags ?tags_all
    ?(properties = []) ~name () : aws_iot_thing_type =
  { deprecated; id; name; tags; tags_all; properties }

type t = {
  tf_name : string;
  arn : string prop;
  deprecated : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?deprecated ?id ?tags ?tags_all ?(properties = []) ~name
    __id =
  let __type = "aws_iot_thing_type" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       deprecated = Prop.computed __type __id "deprecated";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_type
        (aws_iot_thing_type ?deprecated ?id ?tags ?tags_all
           ~properties ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?deprecated ?id ?tags ?tags_all
    ?(properties = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?deprecated ?id ?tags ?tags_all ~properties ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
