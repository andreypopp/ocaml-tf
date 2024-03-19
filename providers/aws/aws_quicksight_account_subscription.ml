(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create: string  prop option; [@option] (** create *)
  delete: string  prop option; [@option] (** delete *)
  read: string  prop option; [@option] (** read *)
} [@@deriving yojson_of]
(** timeouts *)

type aws_quicksight_account_subscription = {
  account_name: string prop;  (** account_name *)
  active_directory_name: string  prop option; [@option] (** active_directory_name *)
  admin_group: string   prop list option; [@option] (** admin_group *)
  authentication_method: string prop;  (** authentication_method *)
  author_group: string   prop list option; [@option] (** author_group *)
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  contact_number: string  prop option; [@option] (** contact_number *)
  directory_id: string  prop option; [@option] (** directory_id *)
  edition: string prop;  (** edition *)
  email_address: string  prop option; [@option] (** email_address *)
  first_name: string  prop option; [@option] (** first_name *)
  id: string  prop option; [@option] (** id *)
  last_name: string  prop option; [@option] (** last_name *)
  notification_email: string prop;  (** notification_email *)
  reader_group: string   prop list option; [@option] (** reader_group *)
  realm: string  prop option; [@option] (** realm *)
  timeouts: timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_account_subscription *)

let timeouts ?create ?delete ?read () =
  ({
    create;
    delete;
    read;
  } : timeouts);;

let aws_quicksight_account_subscription ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email () =
  ({
    account_name;
    active_directory_name;
    admin_group;
    authentication_method;
    author_group;
    aws_account_id;
    contact_number;
    directory_id;
    edition;
    email_address;
    first_name;
    id;
    last_name;
    notification_email;
    reader_group;
    realm;
    timeouts;
  } : aws_quicksight_account_subscription);;

type t = {
  account_name: string prop;
  account_subscription_status: string prop;
  active_directory_name: string prop;
  admin_group: string list prop;
  authentication_method: string prop;
  author_group: string list prop;
  aws_account_id: string prop;
  contact_number: string prop;
  directory_id: string prop;
  edition: string prop;
  email_address: string prop;
  first_name: string prop;
  id: string prop;
  last_name: string prop;
  notification_email: string prop;
  reader_group: string list prop;
  realm: string prop;
}

let register ?tf_module ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email __resource_id =
  let __resource_type = "aws_quicksight_account_subscription" in
  let __resource = aws_quicksight_account_subscription ?active_directory_name ?admin_group ?author_group ?aws_account_id ?contact_number ?directory_id ?email_address ?first_name ?id ?last_name ?reader_group ?realm ?timeouts ~account_name ~authentication_method ~edition ~notification_email () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_account_subscription __resource);
  let __resource_attributes = ({
    account_name = Prop.computed __resource_type __resource_id "account_name";
    account_subscription_status = Prop.computed __resource_type __resource_id "account_subscription_status";
    active_directory_name = Prop.computed __resource_type __resource_id "active_directory_name";
    admin_group = Prop.computed __resource_type __resource_id "admin_group";
    authentication_method = Prop.computed __resource_type __resource_id "authentication_method";
    author_group = Prop.computed __resource_type __resource_id "author_group";
    aws_account_id = Prop.computed __resource_type __resource_id "aws_account_id";
    contact_number = Prop.computed __resource_type __resource_id "contact_number";
    directory_id = Prop.computed __resource_type __resource_id "directory_id";
    edition = Prop.computed __resource_type __resource_id "edition";
    email_address = Prop.computed __resource_type __resource_id "email_address";
    first_name = Prop.computed __resource_type __resource_id "first_name";
    id = Prop.computed __resource_type __resource_id "id";
    last_name = Prop.computed __resource_type __resource_id "last_name";
    notification_email = Prop.computed __resource_type __resource_id "notification_email";
    reader_group = Prop.computed __resource_type __resource_id "reader_group";
    realm = Prop.computed __resource_type __resource_id "realm";
  } : t) in
  __resource_attributes;;

