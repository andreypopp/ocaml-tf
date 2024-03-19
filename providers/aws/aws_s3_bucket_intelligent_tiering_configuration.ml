(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** filter *)

type tiering = {
  access_tier : string prop;  (** access_tier *)
  days : float prop;  (** days *)
}
[@@deriving yojson_of]
(** tiering *)

type aws_s3_bucket_intelligent_tiering_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  status : string prop option; [@option]  (** status *)
  filter : filter list;
  tiering : tiering list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_intelligent_tiering_configuration *)

let filter ?prefix ?tags () : filter = { prefix; tags }
let tiering ~access_tier ~days () : tiering = { access_tier; days }

let aws_s3_bucket_intelligent_tiering_configuration ?id ?status
    ~bucket ~name ~filter ~tiering () :
    aws_s3_bucket_intelligent_tiering_configuration =
  { bucket; id; name; status; filter; tiering }

type t = {
  bucket : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let register ?tf_module ?id ?status ~bucket ~name ~filter ~tiering
    __resource_id =
  let __resource_type =
    "aws_s3_bucket_intelligent_tiering_configuration"
  in
  let __resource =
    aws_s3_bucket_intelligent_tiering_configuration ?id ?status
      ~bucket ~name ~filter ~tiering ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_intelligent_tiering_configuration
       __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
