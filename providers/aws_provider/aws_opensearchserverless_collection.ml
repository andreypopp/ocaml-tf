(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearchserverless_collection__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_collection__timeouts *)

type aws_opensearchserverless_collection = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  standby_replicas : string option; [@option]
      (** standby_replicas *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  timeouts : aws_opensearchserverless_collection__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_collection *)

let aws_opensearchserverless_collection ?description
    ?standby_replicas ?tags ?type_ ?timeouts ~name __resource_id =
  let __resource_type = "aws_opensearchserverless_collection" in
  let __resource =
    { description; name; standby_replicas; tags; type_; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_collection __resource);
  ()
