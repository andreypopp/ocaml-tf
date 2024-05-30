(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_user_base_schema_property = {
  id : string prop option; [@option]
  index : string prop;
  master : string prop option; [@option]
  pattern : string prop option; [@option]
  permissions : string prop option; [@option]
  required : bool prop option; [@option]
  title : string prop;
  type_ : string prop; [@key "type"]
  user_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_base_schema_property) -> ()

let yojson_of_okta_user_base_schema_property =
  (function
   | {
       id = v_id;
       index = v_index;
       master = v_master;
       pattern = v_pattern;
       permissions = v_permissions;
       required = v_required;
       title = v_title;
       type_ = v_type_;
       user_type = v_user_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pattern", arg in
             bnd :: bnds
       in
       let bnds =
         match v_master with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "master", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index in
         ("index", arg) :: bnds
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
    : okta_user_base_schema_property ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_base_schema_property

[@@@deriving.end]

let okta_user_base_schema_property ?id ?master ?pattern ?permissions
    ?required ?user_type ~index ~title ~type_ () :
    okta_user_base_schema_property =
  {
    id;
    index;
    master;
    pattern;
    permissions;
    required;
    title;
    type_;
    user_type;
  }

type t = {
  tf_name : string;
  id : string prop;
  index : string prop;
  master : string prop;
  pattern : string prop;
  permissions : string prop;
  required : bool prop;
  title : string prop;
  type_ : string prop;
  user_type : string prop;
}

let make ?id ?master ?pattern ?permissions ?required ?user_type
    ~index ~title ~type_ __id =
  let __type = "okta_user_base_schema_property" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       index = Prop.computed __type __id "index";
       master = Prop.computed __type __id "master";
       pattern = Prop.computed __type __id "pattern";
       permissions = Prop.computed __type __id "permissions";
       required = Prop.computed __type __id "required";
       title = Prop.computed __type __id "title";
       type_ = Prop.computed __type __id "type";
       user_type = Prop.computed __type __id "user_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_base_schema_property
        (okta_user_base_schema_property ?id ?master ?pattern
           ?permissions ?required ?user_type ~index ~title ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?master ?pattern ?permissions ?required
    ?user_type ~index ~title ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?master ?pattern ?permissions ?required ?user_type
      ~index ~title ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
