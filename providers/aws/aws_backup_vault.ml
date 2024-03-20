(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?force_destroy ?id ?kms_key_arn ?tags ?tags_all ?timeouts
    ~name __id =
  let __type = "aws_backup_vault" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       name = Prop.computed __type __id "name";
       recovery_points = Prop.computed __type __id "recovery_points";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_vault
        (aws_backup_vault ?force_destroy ?id ?kms_key_arn ?tags
           ?tags_all ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?kms_key_arn ?tags
    ?tags_all ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?kms_key_arn ?tags ?tags_all ?timeouts
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
