(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sse_configuration = {
  customer_managed_key_enabled : bool prop option; [@option]
      (** customer_managed_key_enabled *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** sse_configuration *)

type aws_verifiedaccess_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  policy_document : string prop option; [@option]
      (** policy_document *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  verifiedaccess_instance_id : string prop;
      (** verifiedaccess_instance_id *)
  sse_configuration : sse_configuration list;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_group *)

let sse_configuration ?customer_managed_key_enabled ?kms_key_arn () :
    sse_configuration =
  { customer_managed_key_enabled; kms_key_arn }

let aws_verifiedaccess_group ?description ?id ?policy_document ?tags
    ?tags_all ~verifiedaccess_instance_id ~sse_configuration () :
    aws_verifiedaccess_group =
  {
    description;
    id;
    policy_document;
    tags;
    tags_all;
    verifiedaccess_instance_id;
    sse_configuration;
  }

type t = {
  creation_time : string prop;
  deletion_time : string prop;
  description : string prop;
  id : string prop;
  last_updated_time : string prop;
  owner : string prop;
  policy_document : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verifiedaccess_group_arn : string prop;
  verifiedaccess_group_id : string prop;
  verifiedaccess_instance_id : string prop;
}

let make ?description ?id ?policy_document ?tags ?tags_all
    ~verifiedaccess_instance_id ~sse_configuration __id =
  let __type = "aws_verifiedaccess_group" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       deletion_time = Prop.computed __type __id "deletion_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       owner = Prop.computed __type __id "owner";
       policy_document = Prop.computed __type __id "policy_document";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       verifiedaccess_group_arn =
         Prop.computed __type __id "verifiedaccess_group_arn";
       verifiedaccess_group_id =
         Prop.computed __type __id "verifiedaccess_group_id";
       verifiedaccess_instance_id =
         Prop.computed __type __id "verifiedaccess_instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_group
        (aws_verifiedaccess_group ?description ?id ?policy_document
           ?tags ?tags_all ~verifiedaccess_instance_id
           ~sse_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?policy_document ?tags
    ?tags_all ~verifiedaccess_instance_id ~sse_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?policy_document ?tags ?tags_all
      ~verifiedaccess_instance_id ~sse_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
