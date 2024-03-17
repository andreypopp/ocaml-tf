(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_network_insights_path = {
  destination : string;  (** destination *)
  destination_ip : string option; [@option]  (** destination_ip *)
  destination_port : float option; [@option]  (** destination_port *)
  id : string option; [@option]  (** id *)
  protocol : string;  (** protocol *)
  source : string;  (** source *)
  source_ip : string option; [@option]  (** source_ip *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_network_insights_path *)

let aws_ec2_network_insights_path ?destination_ip ?destination_port
    ?id ?source_ip ?tags ?tags_all ~destination ~protocol ~source
    __resource_id =
  let __resource_type = "aws_ec2_network_insights_path" in
  let __resource =
    {
      destination;
      destination_ip;
      destination_port;
      id;
      protocol;
      source;
      source_ip;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_network_insights_path __resource);
  ()
