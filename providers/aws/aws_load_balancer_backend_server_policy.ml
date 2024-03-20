(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_load_balancer_backend_server_policy = {
  id : string prop option; [@option]
  instance_port : float prop;
  load_balancer_name : string prop;
  policy_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_load_balancer_backend_server_policy) -> ()

let yojson_of_aws_load_balancer_backend_server_policy =
  (function
   | {
       id = v_id;
       instance_port = v_instance_port;
       load_balancer_name = v_load_balancer_name;
       policy_names = v_policy_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
           yojson_of_prop yojson_of_string v_load_balancer_name
         in
         ("load_balancer_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_port in
         ("instance_port", arg) :: bnds
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
    : aws_load_balancer_backend_server_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_load_balancer_backend_server_policy

[@@@deriving.end]

let aws_load_balancer_backend_server_policy ?id ?policy_names
    ~instance_port ~load_balancer_name () :
    aws_load_balancer_backend_server_policy =
  { id; instance_port; load_balancer_name; policy_names }

type t = {
  id : string prop;
  instance_port : float prop;
  load_balancer_name : string prop;
  policy_names : string list prop;
}

let make ?id ?policy_names ~instance_port ~load_balancer_name __id =
  let __type = "aws_load_balancer_backend_server_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_port = Prop.computed __type __id "instance_port";
       load_balancer_name =
         Prop.computed __type __id "load_balancer_name";
       policy_names = Prop.computed __type __id "policy_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_load_balancer_backend_server_policy
        (aws_load_balancer_backend_server_policy ?id ?policy_names
           ~instance_port ~load_balancer_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_names ~instance_port
    ~load_balancer_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_names ~instance_port ~load_balancer_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
