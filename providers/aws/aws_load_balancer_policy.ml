(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type policy_attribute = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy_attribute) -> ()

let yojson_of_policy_attribute =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
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
       `Assoc bnds
    : policy_attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy_attribute

[@@@deriving.end]

type aws_load_balancer_policy = {
  id : string prop option; [@option]
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
  policy_attribute : policy_attribute list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_load_balancer_policy) -> ()

let yojson_of_aws_load_balancer_policy =
  (function
   | {
       id = v_id;
       load_balancer_name = v_load_balancer_name;
       policy_name = v_policy_name;
       policy_type_name = v_policy_type_name;
       policy_attribute = v_policy_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_policy_attribute then bnds
         else
           let arg =
             (yojson_of_list yojson_of_policy_attribute)
               v_policy_attribute
           in
           let bnd = "policy_attribute", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_type_name
         in
         ("policy_type_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_name in
         ("policy_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_name
         in
         ("load_balancer_name", arg) :: bnds
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
    : aws_load_balancer_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_load_balancer_policy

[@@@deriving.end]

let policy_attribute ?name ?value () : policy_attribute =
  { name; value }

let aws_load_balancer_policy ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute () : aws_load_balancer_policy
    =
  {
    id;
    load_balancer_name;
    policy_name;
    policy_type_name;
    policy_attribute;
  }

type t = {
  tf_name : string;
  id : string prop;
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
}

let make ?id ~load_balancer_name ~policy_name ~policy_type_name
    ~policy_attribute __id =
  let __type = "aws_load_balancer_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       load_balancer_name =
         Prop.computed __type __id "load_balancer_name";
       policy_name = Prop.computed __type __id "policy_name";
       policy_type_name =
         Prop.computed __type __id "policy_type_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_load_balancer_policy
        (aws_load_balancer_policy ?id ~load_balancer_name
           ~policy_name ~policy_type_name ~policy_attribute ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~load_balancer_name ~policy_name
    ~policy_type_name ~policy_attribute __id =
  let (r : _ Tf_core.resource) =
    make ?id ~load_balancer_name ~policy_name ~policy_type_name
      ~policy_attribute __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
