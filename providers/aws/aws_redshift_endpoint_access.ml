(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc_endpoint__network_interface = {
  availability_zone : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_endpoint__network_interface) -> ()

let yojson_of_vpc_endpoint__network_interface =
  (function
   | {
       availability_zone = v_availability_zone;
       network_interface_id = v_network_interface_id;
       private_ip_address = v_private_ip_address;
       subnet_id = v_subnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_private_ip_address
         in
         ("private_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : vpc_endpoint__network_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_endpoint__network_interface

[@@@deriving.end]

type vpc_endpoint = {
  network_interface : vpc_endpoint__network_interface list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_endpoint_id : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_endpoint) -> ()

let yojson_of_vpc_endpoint =
  (function
   | {
       network_interface = v_network_interface;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vpc_endpoint_id
         in
         ("vpc_endpoint_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_interface then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vpc_endpoint__network_interface)
               v_network_interface
           in
           let bnd = "network_interface", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpc_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_endpoint

[@@@deriving.end]

type aws_redshift_endpoint_access = {
  cluster_identifier : string prop;
  endpoint_name : string prop;
  id : string prop option; [@option]
  resource_owner : string prop option; [@option]
  subnet_group_name : string prop;
  vpc_security_group_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_endpoint_access) -> ()

let yojson_of_aws_redshift_endpoint_access =
  (function
   | {
       cluster_identifier = v_cluster_identifier;
       endpoint_name = v_endpoint_name;
       id = v_id;
       resource_owner = v_resource_owner;
       subnet_group_name = v_subnet_group_name;
       vpc_security_group_ids = v_vpc_security_group_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subnet_group_name
         in
         ("subnet_group_name", arg) :: bnds
       in
       let bnds =
         match v_resource_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_owner", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_name in
         ("endpoint_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cluster_identifier
         in
         ("cluster_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_redshift_endpoint_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_endpoint_access

[@@@deriving.end]

let aws_redshift_endpoint_access ?id ?resource_owner
    ?vpc_security_group_ids ~cluster_identifier ~endpoint_name
    ~subnet_group_name () : aws_redshift_endpoint_access =
  {
    cluster_identifier;
    endpoint_name;
    id;
    resource_owner;
    subnet_group_name;
    vpc_security_group_ids;
  }

type t = {
  tf_name : string;
  address : string prop;
  cluster_identifier : string prop;
  endpoint_name : string prop;
  id : string prop;
  port : float prop;
  resource_owner : string prop;
  subnet_group_name : string prop;
  vpc_endpoint : vpc_endpoint list prop;
  vpc_security_group_ids : string list prop;
}

let make ?id ?resource_owner ?vpc_security_group_ids
    ~cluster_identifier ~endpoint_name ~subnet_group_name __id =
  let __type = "aws_redshift_endpoint_access" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       endpoint_name = Prop.computed __type __id "endpoint_name";
       id = Prop.computed __type __id "id";
       port = Prop.computed __type __id "port";
       resource_owner = Prop.computed __type __id "resource_owner";
       subnet_group_name =
         Prop.computed __type __id "subnet_group_name";
       vpc_endpoint = Prop.computed __type __id "vpc_endpoint";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_endpoint_access
        (aws_redshift_endpoint_access ?id ?resource_owner
           ?vpc_security_group_ids ~cluster_identifier ~endpoint_name
           ~subnet_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_owner ?vpc_security_group_ids
    ~cluster_identifier ~endpoint_name ~subnet_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_owner ?vpc_security_group_ids
      ~cluster_identifier ~endpoint_name ~subnet_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
