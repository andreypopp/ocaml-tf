(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appautoscaling_target = {
  id : string option; [@option]  (** id *)
  max_capacity : float;  (** max_capacity *)
  min_capacity : float;  (** min_capacity *)
  resource_id : string;  (** resource_id *)
  role_arn : string option; [@option]  (** role_arn *)
  scalable_dimension : string;  (** scalable_dimension *)
  service_namespace : string;  (** service_namespace *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_target *)

let aws_appautoscaling_target ?id ?role_arn ?tags ?tags_all
    ~max_capacity ~min_capacity ~resource_id ~scalable_dimension
    ~service_namespace __resource_id =
  let __resource_type = "aws_appautoscaling_target" in
  let __resource =
    {
      id;
      max_capacity;
      min_capacity;
      resource_id;
      role_arn;
      scalable_dimension;
      service_namespace;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appautoscaling_target __resource);
  ()
