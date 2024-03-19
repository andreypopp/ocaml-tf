(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_backup_vault = {
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_backup_vault *)

let timeouts ?delete () : timeouts = { delete }

let aws_backup_vault ?force_destroy ?id ?kms_key_arn ?tags ?tags_all
    ?timeouts ~name () : aws_backup_vault =
  { force_destroy; id; kms_key_arn; name; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  recovery_points : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?force_destroy ?id ?kms_key_arn ?tags
    ?tags_all ?timeouts ~name __resource_id =
  let __resource_type = "aws_backup_vault" in
  let __resource =
    aws_backup_vault ?force_destroy ?id ?kms_key_arn ?tags ?tags_all
      ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_points =
         Prop.computed __resource_type __resource_id
           "recovery_points";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
