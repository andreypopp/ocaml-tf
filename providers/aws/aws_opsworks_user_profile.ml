(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opsworks_user_profile = {
  allow_self_management : bool prop option; [@option]
      (** allow_self_management *)
  id : string prop option; [@option]  (** id *)
  ssh_public_key : string prop option; [@option]
      (** ssh_public_key *)
  ssh_username : string prop;  (** ssh_username *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_opsworks_user_profile *)

let aws_opsworks_user_profile ?allow_self_management ?id
    ?ssh_public_key ~ssh_username ~user_arn () :
    aws_opsworks_user_profile =
  {
    allow_self_management;
    id;
    ssh_public_key;
    ssh_username;
    user_arn;
  }

type t = {
  allow_self_management : bool prop;
  id : string prop;
  ssh_public_key : string prop;
  ssh_username : string prop;
  user_arn : string prop;
}

let make ?allow_self_management ?id ?ssh_public_key ~ssh_username
    ~user_arn __id =
  let __type = "aws_opsworks_user_profile" in
  let __attrs =
    ({
       allow_self_management =
         Prop.computed __type __id "allow_self_management";
       id = Prop.computed __type __id "id";
       ssh_public_key = Prop.computed __type __id "ssh_public_key";
       ssh_username = Prop.computed __type __id "ssh_username";
       user_arn = Prop.computed __type __id "user_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_user_profile
        (aws_opsworks_user_profile ?allow_self_management ?id
           ?ssh_public_key ~ssh_username ~user_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_self_management ?id ?ssh_public_key
    ~ssh_username ~user_arn __id =
  let (r : _ Tf_core.resource) =
    make ?allow_self_management ?id ?ssh_public_key ~ssh_username
      ~user_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
