(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_proxy_protocol_policy = {
  id : string prop option; [@option]
  instance_ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancer : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_proxy_protocol_policy) -> ()

let yojson_of_aws_proxy_protocol_policy =
  (function
   | {
       id = v_id;
       instance_ports = v_instance_ports;
       load_balancer = v_load_balancer;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_load_balancer in
         ("load_balancer", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_instance_ports
           in
           let bnd = "instance_ports", arg in
           bnd :: bnds
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
    : aws_proxy_protocol_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_proxy_protocol_policy

[@@@deriving.end]

let aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer () :
    aws_proxy_protocol_policy =
  { id; instance_ports; load_balancer }

type t = {
  tf_name : string;
  id : string prop;
  instance_ports : string list prop;
  load_balancer : string prop;
}

let make ?id ~instance_ports ~load_balancer __id =
  let __type = "aws_proxy_protocol_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instance_ports = Prop.computed __type __id "instance_ports";
       load_balancer = Prop.computed __type __id "load_balancer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_proxy_protocol_policy
        (aws_proxy_protocol_policy ?id ~instance_ports ~load_balancer
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_ports ~load_balancer __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_ports ~load_balancer __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
