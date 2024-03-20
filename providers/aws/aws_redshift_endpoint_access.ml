(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc_endpoint__network_interface = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
  private_ip_address : string prop;  (** private_ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type vpc_endpoint = {
  network_interface : vpc_endpoint__network_interface list;
      (** network_interface *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]

type aws_redshift_endpoint_access = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  endpoint_name : string prop;  (** endpoint_name *)
  id : string prop option; [@option]  (** id *)
  resource_owner : string prop option; [@option]
      (** resource_owner *)
  subnet_group_name : string prop;  (** subnet_group_name *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
}
[@@deriving yojson_of]
(** aws_redshift_endpoint_access *)

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
