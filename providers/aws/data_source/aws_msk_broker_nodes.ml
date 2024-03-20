(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type node_info_list = {
  attached_eni_id : string prop;
  broker_id : float prop;
  client_subnet : string prop;
  client_vpc_ip_address : string prop;
  endpoints : string prop list;
  node_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_info_list) -> ()

let yojson_of_node_info_list =
  (function
   | {
       attached_eni_id = v_attached_eni_id;
       broker_id = v_broker_id;
       client_subnet = v_client_subnet;
       client_vpc_ip_address = v_client_vpc_ip_address;
       endpoints = v_endpoints;
       node_arn = v_node_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_arn in
         ("node_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_endpoints
         in
         ("endpoints", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_vpc_ip_address
         in
         ("client_vpc_ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_subnet in
         ("client_subnet", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_broker_id in
         ("broker_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attached_eni_id
         in
         ("attached_eni_id", arg) :: bnds
       in
       `Assoc bnds
    : node_info_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_info_list

[@@@deriving.end]

type aws_msk_broker_nodes = {
  cluster_arn : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_broker_nodes) -> ()

let yojson_of_aws_msk_broker_nodes =
  (function
   | { cluster_arn = v_cluster_arn; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_broker_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_broker_nodes

[@@@deriving.end]

let aws_msk_broker_nodes ?id ~cluster_arn () : aws_msk_broker_nodes =
  { cluster_arn; id }

type t = {
  cluster_arn : string prop;
  id : string prop;
  node_info_list : node_info_list list prop;
}

let make ?id ~cluster_arn __id =
  let __type = "aws_msk_broker_nodes" in
  let __attrs =
    ({
       cluster_arn = Prop.computed __type __id "cluster_arn";
       id = Prop.computed __type __id "id";
       node_info_list = Prop.computed __type __id "node_info_list";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_broker_nodes
        (aws_msk_broker_nodes ?id ~cluster_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
