(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_resourceexplorer2_index__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_index__timeouts *)

type aws_resourceexplorer2_index = {
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
  timeouts : aws_resourceexplorer2_index__timeouts option;
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_index *)

let aws_resourceexplorer2_index ?tags ?timeouts ~type_ __resource_id
    =
  let __resource_type = "aws_resourceexplorer2_index" in
  let __resource = { tags; type_; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourceexplorer2_index __resource);
  ()
