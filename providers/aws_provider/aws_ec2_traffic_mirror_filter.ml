(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  network_services : string prop list option; [@option]
      (** network_services *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  network_services : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_ec2_traffic_mirror_filter ?description ?id ?network_services
    ?tags ?tags_all __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_filter" in
  let __resource =
    ({ description; id; network_services; tags; tags_all }
      : aws_ec2_traffic_mirror_filter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_filter __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       network_services =
         Prop.computed __resource_type __resource_id
           "network_services";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
