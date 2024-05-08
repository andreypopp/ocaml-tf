(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type option__option_settings = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : option__option_settings) -> ()

let yojson_of_option__option_settings =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : option__option_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_option__option_settings

[@@@deriving.end]

type option_ = {
  db_security_group_memberships : string prop list option; [@option]
  option_name : string prop;
  port : float prop option; [@option]
  version : string prop option; [@option]
  vpc_security_group_memberships : string prop list option; [@option]
  option_settings : option__option_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : option_) -> ()

let yojson_of_option_ =
  (function
   | {
       db_security_group_memberships =
         v_db_security_group_memberships;
       option_name = v_option_name;
       port = v_port;
       version = v_version;
       vpc_security_group_memberships =
         v_vpc_security_group_memberships;
       option_settings = v_option_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_option_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_option__option_settings)
               v_option_settings
           in
           let bnd = "option_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_security_group_memberships with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_memberships", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_option_name in
         ("option_name", arg) :: bnds
       in
       let bnds =
         match v_db_security_group_memberships with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "db_security_group_memberships", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : option_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_option_

[@@@deriving.end]

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_db_option_group = {
  engine_name : string prop;
  id : string prop option; [@option]
  major_engine_version : string prop;
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  option_group_description : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  option_ : option_ list;
      [@key "option"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_option_group) -> ()

let yojson_of_aws_db_option_group =
  (function
   | {
       engine_name = v_engine_name;
       id = v_id;
       major_engine_version = v_major_engine_version;
       name = v_name;
       name_prefix = v_name_prefix;
       option_group_description = v_option_group_description;
       tags = v_tags;
       tags_all = v_tags_all;
       option_ = v_option_;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_option_ then bnds
         else
           let arg = (yojson_of_list yojson_of_option_) v_option_ in
           let bnd = "option", arg in
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
         match v_option_group_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "option_group_description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_major_engine_version
         in
         ("major_engine_version", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_engine_name in
         ("engine_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_db_option_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_option_group

[@@@deriving.end]

let option__option_settings ~name ~value () : option__option_settings
    =
  { name; value }

let option_ ?db_security_group_memberships ?port ?version
    ?vpc_security_group_memberships ~option_name ~option_settings ()
    : option_ =
  {
    db_security_group_memberships;
    option_name;
    port;
    version;
    vpc_security_group_memberships;
    option_settings;
  }

let timeouts ?delete () : timeouts = { delete }

let aws_db_option_group ?id ?name ?name_prefix
    ?option_group_description ?tags ?tags_all ?timeouts ~engine_name
    ~major_engine_version ~option_ () : aws_db_option_group =
  {
    engine_name;
    id;
    major_engine_version;
    name;
    name_prefix;
    option_group_description;
    tags;
    tags_all;
    option_;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  engine_name : string prop;
  id : string prop;
  major_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  option_group_description : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?name_prefix ?option_group_description ?tags
    ?tags_all ?timeouts ~engine_name ~major_engine_version ~option_
    __id =
  let __type = "aws_db_option_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       engine_name = Prop.computed __type __id "engine_name";
       id = Prop.computed __type __id "id";
       major_engine_version =
         Prop.computed __type __id "major_engine_version";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       option_group_description =
         Prop.computed __type __id "option_group_description";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_option_group
        (aws_db_option_group ?id ?name ?name_prefix
           ?option_group_description ?tags ?tags_all ?timeouts
           ~engine_name ~major_engine_version ~option_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix
    ?option_group_description ?tags ?tags_all ?timeouts ~engine_name
    ~major_engine_version ~option_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?option_group_description ?tags
      ?tags_all ?timeouts ~engine_name ~major_engine_version ~option_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
