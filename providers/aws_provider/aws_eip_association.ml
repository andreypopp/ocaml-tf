(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    __resource_id =
  let __resource_type = "aws_eip_association" in
  let __resource =
    {
      allocation_id;
      allow_reassociation;
      id;
      instance_id;
      network_interface_id;
      private_ip_address;
      public_ip;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eip_association __resource);
  ()
