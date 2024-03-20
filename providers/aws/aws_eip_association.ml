(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eip_association = {
  allocation_id : string prop option; [@option]  (** allocation_id *)
  allow_reassociation : bool prop option; [@option]
      (** allow_reassociation *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop option; [@option]  (** instance_id *)
  network_interface_id : string prop option; [@option]
      (** network_interface_id *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  public_ip : string prop option; [@option]  (** public_ip *)
}
[@@deriving yojson_of]
(** aws_eip_association *)

let aws_eip_association ?allocation_id ?allow_reassociation ?id
    ?instance_id ?network_interface_id ?private_ip_address ?public_ip
    () : aws_eip_association =
  {
    allocation_id;
    allow_reassociation;
    id;
    instance_id;
    network_interface_id;
    private_ip_address;
    public_ip;
  }

type t = {
  allocation_id : string prop;
  allow_reassociation : bool prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  private_ip_address : string prop;
  public_ip : string prop;
}

let make ?allocation_id ?allow_reassociation ?id ?instance_id
    ?network_interface_id ?private_ip_address ?public_ip __id =
  let __type = "aws_eip_association" in
  let __attrs =
    ({
       allocation_id = Prop.computed __type __id "allocation_id";
       allow_reassociation =
         Prop.computed __type __id "allow_reassociation";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       public_ip = Prop.computed __type __id "public_ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eip_association
        (aws_eip_association ?allocation_id ?allow_reassociation ?id
           ?instance_id ?network_interface_id ?private_ip_address
           ?public_ip ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_id ?allow_reassociation ?id
    ?instance_id ?network_interface_id ?private_ip_address ?public_ip
    __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_id ?allow_reassociation ?id ?instance_id
      ?network_interface_id ?private_ip_address ?public_ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
