(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_load_balancer_listener_policy = {
  id : string prop option; [@option]
  load_balancer_name : string prop;
  load_balancer_port : float prop;
  policy_names : string prop list option; [@option]
  triggers : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_load_balancer_listener_policy) -> ()

let yojson_of_aws_load_balancer_listener_policy =
  (function
   | {
       id = v_id;
       load_balancer_name = v_load_balancer_name;
       load_balancer_port = v_load_balancer_port;
       policy_names = v_policy_names;
       triggers = v_triggers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_triggers with
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
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "policy_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_load_balancer_port
         in
         ("load_balancer_port", arg) :: bnds
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
    : aws_load_balancer_listener_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_load_balancer_listener_policy

[@@@deriving.end]

let aws_load_balancer_listener_policy ?id ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port () :
    aws_load_balancer_listener_policy =
  {
    id;
    load_balancer_name;
    load_balancer_port;
    policy_names;
    triggers;
  }

type t = {
  id : string prop;
  load_balancer_name : string prop;
  load_balancer_port : float prop;
  policy_names : string list prop;
  triggers : (string * string) list prop;
}

let make ?id ?policy_names ?triggers ~load_balancer_name
    ~load_balancer_port __id =
  let __type = "aws_load_balancer_listener_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       load_balancer_name =
         Prop.computed __type __id "load_balancer_name";
       load_balancer_port =
         Prop.computed __type __id "load_balancer_port";
       policy_names = Prop.computed __type __id "policy_names";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_load_balancer_listener_policy
        (aws_load_balancer_listener_policy ?id ?policy_names
           ?triggers ~load_balancer_name ~load_balancer_port ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_names ?triggers
    ~load_balancer_name ~load_balancer_port __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_names ?triggers ~load_balancer_name
      ~load_balancer_port __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
