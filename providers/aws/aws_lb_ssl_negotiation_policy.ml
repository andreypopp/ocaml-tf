(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : attribute) -> ()

let yojson_of_attribute =
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
    : attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attribute

[@@@deriving.end]

type aws_lb_ssl_negotiation_policy = {
  id : string prop option; [@option]
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
  triggers : string prop Tf_core.assoc option; [@option]
  attribute : attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lb_ssl_negotiation_policy) -> ()

let yojson_of_aws_lb_ssl_negotiation_policy =
  (function
   | {
       id = v_id;
       lb_port = v_lb_port;
       load_balancer = v_load_balancer;
       name = v_name;
       triggers = v_triggers;
       attribute = v_attribute;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attribute) v_attribute
           in
           let bnd = "attribute", arg in
           bnd :: bnds
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_load_balancer in
         ("load_balancer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_lb_port in
         ("lb_port", arg) :: bnds
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
    : aws_lb_ssl_negotiation_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lb_ssl_negotiation_policy

[@@@deriving.end]

let attribute ~name ~value () : attribute = { name; value }

let aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
    ~load_balancer ~name ~attribute () :
    aws_lb_ssl_negotiation_policy =
  { id; lb_port; load_balancer; name; triggers; attribute }

type t = {
  tf_name : string;
  id : string prop;
  lb_port : float prop;
  load_balancer : string prop;
  name : string prop;
  triggers : string Tf_core.assoc prop;
}

let make ?id ?triggers ~lb_port ~load_balancer ~name ~attribute __id
    =
  let __type = "aws_lb_ssl_negotiation_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       lb_port = Prop.computed __type __id "lb_port";
       load_balancer = Prop.computed __type __id "load_balancer";
       name = Prop.computed __type __id "name";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_ssl_negotiation_policy
        (aws_lb_ssl_negotiation_policy ?id ?triggers ~lb_port
           ~load_balancer ~name ~attribute ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?triggers ~lb_port ~load_balancer ~name
    ~attribute __id =
  let (r : _ Tf_core.resource) =
    make ?id ?triggers ~lb_port ~load_balancer ~name ~attribute __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
