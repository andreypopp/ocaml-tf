(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_network_insights_path = {
  destination : string;  (** destination *)
  destination_ip : string option; [@option]  (** destination_ip *)
  destination_port : float option; [@option]  (** destination_port *)
  protocol : string;  (** protocol *)
  source : string;  (** source *)
  source_ip : string option; [@option]  (** source_ip *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_ec2_network_insights_path *)

let aws_ec2_network_insights_path ?destination_ip ?destination_port
    ?source_ip ?tags ~destination ~protocol ~source __resource_id =
  let __resource_type = "aws_ec2_network_insights_path" in
  let __resource =
    {
      destination;
      destination_ip;
      destination_port;
      protocol;
      source;
      source_ip;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_network_insights_path __resource);
  ()
