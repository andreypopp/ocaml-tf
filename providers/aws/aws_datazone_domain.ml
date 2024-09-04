(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type single_sign_on = {
  type_ : string prop option; [@option] [@key "type"]
  user_assignment : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : single_sign_on) -> ()

let yojson_of_single_sign_on =
  (function
   | { type_ = v_type_; user_assignment = v_user_assignment } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assignment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assignment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : single_sign_on -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_single_sign_on

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
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
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_datazone_domain = {
  description : string prop option; [@option]
  domain_execution_role : string prop;
  kms_key_identifier : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  single_sign_on : single_sign_on list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datazone_domain) -> ()

let yojson_of_aws_datazone_domain =
  (function
   | {
       description = v_description;
       domain_execution_role = v_domain_execution_role;
       kms_key_identifier = v_kms_key_identifier;
       name = v_name;
       tags = v_tags;
       single_sign_on = v_single_sign_on;
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
         if Stdlib.( = ) [] v_single_sign_on then bnds
         else
           let arg =
             (yojson_of_list yojson_of_single_sign_on)
               v_single_sign_on
           in
           let bnd = "single_sign_on", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_execution_role
         in
         ("domain_execution_role", arg) :: bnds
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
    : aws_datazone_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datazone_domain

[@@@deriving.end]

let single_sign_on ?type_ ?user_assignment () : single_sign_on =
  { type_; user_assignment }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_datazone_domain ?description ?kms_key_identifier ?tags
    ?(single_sign_on = []) ?timeouts ~domain_execution_role ~name ()
    : aws_datazone_domain =
  {
    description;
    domain_execution_role;
    kms_key_identifier;
    name;
    tags;
    single_sign_on;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  domain_execution_role : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  name : string prop;
  portal_url : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?kms_key_identifier ?tags
    ?(single_sign_on = []) ?timeouts ~domain_execution_role ~name
    __id =
  let __type = "aws_datazone_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       domain_execution_role =
         Prop.computed __type __id "domain_execution_role";
       id = Prop.computed __type __id "id";
       kms_key_identifier =
         Prop.computed __type __id "kms_key_identifier";
       name = Prop.computed __type __id "name";
       portal_url = Prop.computed __type __id "portal_url";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datazone_domain
        (aws_datazone_domain ?description ?kms_key_identifier ?tags
           ~single_sign_on ?timeouts ~domain_execution_role ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?kms_key_identifier ?tags
    ?(single_sign_on = []) ?timeouts ~domain_execution_role ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?kms_key_identifier ?tags ~single_sign_on
      ?timeouts ~domain_execution_role ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
