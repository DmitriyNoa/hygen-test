---
to: <%= name %>/src/<%= name %>.test.tsx
---
<%
 className = name.split('');
 className[0] = className[0].toUpperCase();
 className = className.join('');
%>

import { ViewLink } from '@bp/ui-components';
import { shallow } from 'enzyme';
import * as React from 'react';
import <%= className %> from './plugin-<%= name %>';

describe('<<%= className %>. />', () => {
  it('should display title', () => {
    const wrapper = shallow(<Greetings />);
    expect(wrapper.find('h1').text()).toContain('<%= className %>');
  });

  it('should have link', () => {
    const wrapper = shallow(<<%= className %> />);
    const link = wrapper.find(ViewLink);
    expect(link.prop('linkData')).toEqual({ id: 'tutorial3/welcome' });
  });
});
