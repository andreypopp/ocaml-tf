(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_finspace_kx_user__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_user__timeouts *)

type aws_finspace_kx_user = {
  environment_id : string;  (** environment_id *)
  iam_role : string;  (** iam_role *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_finspace_kx_user__timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_user *)

let aws_finspace_kx_user ?tags ?timeouts ~environment_id ~iam_role
    ~name __resource_id =
  let __resource_type = "aws_finspace_kx_user" in
  let __resource =
    { environment_id; iam_role; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_user __resource);
  ()
