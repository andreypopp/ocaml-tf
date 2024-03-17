(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_shared_directory__target = {
  id : string;  (** id *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory__target *)

type aws_directory_service_shared_directory__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory__timeouts *)

type aws_directory_service_shared_directory = {
  directory_id : string;  (** directory_id *)
  id : string option; [@option]  (** id *)
  method_ : string option; [@option] [@key "method"]  (** method *)
  notes : string option; [@option]  (** notes *)
  target : aws_directory_service_shared_directory__target list;
  timeouts : aws_directory_service_shared_directory__timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory *)

let aws_directory_service_shared_directory ?id ?method_ ?notes
    ?timeouts ~directory_id ~target __resource_id =
  let __resource_type = "aws_directory_service_shared_directory" in
  let __resource =
    { directory_id; id; method_; notes; target; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_shared_directory __resource);
  ()
