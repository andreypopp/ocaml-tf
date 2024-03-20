(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl_configuration = {
  s3_acl_option : string prop;  (** s3_acl_option *)
}
[@@deriving yojson_of]
(** acl_configuration *)

type encryption_configuration = {
  encryption_option : string prop;  (** encryption_option *)
  kms_key : string prop option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** encryption_configuration *)

type aws_athena_database = {
  bucket : string prop option; [@option]  (** bucket *)
  comment : string prop option; [@option]  (** comment *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  acl_configuration : acl_configuration list;
  encryption_configuration : encryption_configuration list;
}
[@@deriving yojson_of]
(** aws_athena_database *)

let acl_configuration ~s3_acl_option () : acl_configuration =
  { s3_acl_option }

let encryption_configuration ?kms_key ~encryption_option () :
    encryption_configuration =
  { encryption_option; kms_key }

let aws_athena_database ?bucket ?comment ?expected_bucket_owner
    ?force_destroy ?id ?properties ~name ~acl_configuration
    ~encryption_configuration () : aws_athena_database =
  {
    bucket;
    comment;
    expected_bucket_owner;
    force_destroy;
    id;
    name;
    properties;
    acl_configuration;
    encryption_configuration;
  }

type t = {
  bucket : string prop;
  comment : string prop;
  expected_bucket_owner : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
}

let make ?bucket ?comment ?expected_bucket_owner ?force_destroy ?id
    ?properties ~name ~acl_configuration ~encryption_configuration
    __id =
  let __type = "aws_athena_database" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       comment = Prop.computed __type __id "comment";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       properties = Prop.computed __type __id "properties";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_database
        (aws_athena_database ?bucket ?comment ?expected_bucket_owner
           ?force_destroy ?id ?properties ~name ~acl_configuration
           ~encryption_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?bucket ?comment ?expected_bucket_owner
    ?force_destroy ?id ?properties ~name ~acl_configuration
    ~encryption_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?bucket ?comment ?expected_bucket_owner ?force_destroy ?id
      ?properties ~name ~acl_configuration ~encryption_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
