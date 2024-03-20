(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?status ~bucket ~name ~filter ~tiering __id =
  let __type = "aws_s3_bucket_intelligent_tiering_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_intelligent_tiering_configuration
        (aws_s3_bucket_intelligent_tiering_configuration ?id ?status
           ~bucket ~name ~filter ~tiering ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~bucket ~name ~filter ~tiering
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~bucket ~name ~filter ~tiering __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
