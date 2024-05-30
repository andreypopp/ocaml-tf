(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type array_one_of = { const : string prop; title : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : array_one_of) -> ()

let yojson_of_array_one_of =
  (function
   | { const = v_const; title = v_title } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_const in
         ("const", arg) :: bnds
       in
       `Assoc bnds
    : array_one_of -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_array_one_of

[@@@deriving.end]

type one_of = { const : string prop; title : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : one_of) -> ()

let yojson_of_one_of =
  (function
   | { const = v_const; title = v_title } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_const in
         ("const", arg) :: bnds
       in
       `Assoc bnds
    : one_of -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_one_of

[@@@deriving.end]

type okta_app_user_schema_property = {
  app_id : string prop;
  array_enum : string prop list option; [@option]
  array_type : string prop option; [@option]
  description : string prop option; [@option]
  enum : string prop list option; [@option]
  external_name : string prop option; [@option]
  external_namespace : string prop option; [@option]
  id : string prop option; [@option]
  index : string prop;
  master : string prop option; [@option]
  max_length : float prop option; [@option]
  min_length : float prop option; [@option]
  permissions : string prop option; [@option]
  required : bool prop option; [@option]
  scope : string prop option; [@option]
  title : string prop;
  type_ : string prop; [@key "type"]
  union : bool prop option; [@option]
  unique : string prop option; [@option]
  user_type : string prop option; [@option]
  array_one_of : array_one_of list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  one_of : one_of list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_user_schema_property) -> ()

let yojson_of_okta_app_user_schema_property =
  (function
   | {
       app_id = v_app_id;
       array_enum = v_array_enum;
       array_type = v_array_type;
       description = v_description;
       enum = v_enum;
       external_name = v_external_name;
       external_namespace = v_external_namespace;
       id = v_id;
       index = v_index;
       master = v_master;
       max_length = v_max_length;
       min_length = v_min_length;
       permissions = v_permissions;
       required = v_required;
       scope = v_scope;
       title = v_title;
       type_ = v_type_;
       union = v_union;
       unique = v_unique;
       user_type = v_user_type;
       array_one_of = v_array_one_of;
       one_of = v_one_of;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_one_of then bnds
         else
           let arg = (yojson_of_list yojson_of_one_of) v_one_of in
           let bnd = "one_of", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_array_one_of then bnds
         else
           let arg =
             (yojson_of_list yojson_of_array_one_of) v_array_one_of
           in
           let bnd = "array_one_of", arg in
           bnd :: bnds
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
         match v_unique with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unique", arg in
             bnd :: bnds
       in
       let bnds =
         match v_union with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "union", arg in
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
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
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
         match v_min_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_length", arg in
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
       let bnds =
         match v_external_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enum", arg in
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
       let bnds =
         match v_array_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "array_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_array_enum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "array_enum", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_user_schema_property ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_user_schema_property

[@@@deriving.end]

let array_one_of ~const ~title () : array_one_of = { const; title }
let one_of ~const ~title () : one_of = { const; title }

let okta_app_user_schema_property ?array_enum ?array_type
    ?description ?enum ?external_name ?external_namespace ?id ?master
    ?max_length ?min_length ?permissions ?required ?scope ?union
    ?unique ?user_type ?(array_one_of = []) ?(one_of = []) ~app_id
    ~index ~title ~type_ () : okta_app_user_schema_property =
  {
    app_id;
    array_enum;
    array_type;
    description;
    enum;
    external_name;
    external_namespace;
    id;
    index;
    master;
    max_length;
    min_length;
    permissions;
    required;
    scope;
    title;
    type_;
    union;
    unique;
    user_type;
    array_one_of;
    one_of;
  }

type t = {
  tf_name : string;
  app_id : string prop;
  array_enum : string list prop;
  array_type : string prop;
  description : string prop;
  enum : string list prop;
  external_name : string prop;
  external_namespace : string prop;
  id : string prop;
  index : string prop;
  master : string prop;
  max_length : float prop;
  min_length : float prop;
  permissions : string prop;
  required : bool prop;
  scope : string prop;
  title : string prop;
  type_ : string prop;
  union : bool prop;
  unique : string prop;
  user_type : string prop;
}

let make ?array_enum ?array_type ?description ?enum ?external_name
    ?external_namespace ?id ?master ?max_length ?min_length
    ?permissions ?required ?scope ?union ?unique ?user_type
    ?(array_one_of = []) ?(one_of = []) ~app_id ~index ~title ~type_
    __id =
  let __type = "okta_app_user_schema_property" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       array_enum = Prop.computed __type __id "array_enum";
       array_type = Prop.computed __type __id "array_type";
       description = Prop.computed __type __id "description";
       enum = Prop.computed __type __id "enum";
       external_name = Prop.computed __type __id "external_name";
       external_namespace =
         Prop.computed __type __id "external_namespace";
       id = Prop.computed __type __id "id";
       index = Prop.computed __type __id "index";
       master = Prop.computed __type __id "master";
       max_length = Prop.computed __type __id "max_length";
       min_length = Prop.computed __type __id "min_length";
       permissions = Prop.computed __type __id "permissions";
       required = Prop.computed __type __id "required";
       scope = Prop.computed __type __id "scope";
       title = Prop.computed __type __id "title";
       type_ = Prop.computed __type __id "type";
       union = Prop.computed __type __id "union";
       unique = Prop.computed __type __id "unique";
       user_type = Prop.computed __type __id "user_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_user_schema_property
        (okta_app_user_schema_property ?array_enum ?array_type
           ?description ?enum ?external_name ?external_namespace ?id
           ?master ?max_length ?min_length ?permissions ?required
           ?scope ?union ?unique ?user_type ~array_one_of ~one_of
           ~app_id ~index ~title ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?array_enum ?array_type ?description ?enum
    ?external_name ?external_namespace ?id ?master ?max_length
    ?min_length ?permissions ?required ?scope ?union ?unique
    ?user_type ?(array_one_of = []) ?(one_of = []) ~app_id ~index
    ~title ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?array_enum ?array_type ?description ?enum ?external_name
      ?external_namespace ?id ?master ?max_length ?min_length
      ?permissions ?required ?scope ?union ?unique ?user_type
      ~array_one_of ~one_of ~app_id ~index ~title ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
