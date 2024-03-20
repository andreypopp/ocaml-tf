(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_devicefarm_instance_profile = {
  description : string prop option; [@option]  (** description *)
  exclude_app_packages_from_cleanup : string prop list option;
      [@option]
      (** exclude_app_packages_from_cleanup *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  package_cleanup : bool prop option; [@option]
      (** package_cleanup *)
  reboot_after_use : bool prop option; [@option]
      (** reboot_after_use *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_devicefarm_instance_profile *)

let aws_devicefarm_instance_profile ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name () :
    aws_devicefarm_instance_profile =
  {
    description;
    exclude_app_packages_from_cleanup;
    id;
    name;
    package_cleanup;
    reboot_after_use;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  exclude_app_packages_from_cleanup : string list prop;
  id : string prop;
  name : string prop;
  package_cleanup : bool prop;
  reboot_after_use : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?exclude_app_packages_from_cleanup ?id
    ?package_cleanup ?reboot_after_use ?tags ?tags_all ~name __id =
  let __type = "aws_devicefarm_instance_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       exclude_app_packages_from_cleanup =
         Prop.computed __type __id
           "exclude_app_packages_from_cleanup";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       package_cleanup = Prop.computed __type __id "package_cleanup";
       reboot_after_use =
         Prop.computed __type __id "reboot_after_use";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devicefarm_instance_profile
        (aws_devicefarm_instance_profile ?description
           ?exclude_app_packages_from_cleanup ?id ?package_cleanup
           ?reboot_after_use ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?exclude_app_packages_from_cleanup ?id ?package_cleanup
    ?reboot_after_use ?tags ?tags_all ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?exclude_app_packages_from_cleanup ?id
      ?package_cleanup ?reboot_after_use ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
