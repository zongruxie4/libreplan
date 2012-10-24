/*
 * This file is part of LibrePlan
 *
 * Copyright (C) 2012 Igalia, S.L.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package org.libreplan.importers;

import static org.junit.Assert.assertTrue;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.ws.rs.WebApplicationException;

import org.junit.Before;
import org.junit.Test;
import org.libreplan.importers.jira.Issue;

/**
 * Test for {@link JiraRESTClient }
 *
 * @author Miciele Ghiorghis <m.ghiorghis@antoniusziekenhuis.nl>
 */
public class JiraRESTClientTest {

    private Properties properties = null;

    @Before
    public void loadProperties() throws FileNotFoundException, IOException {

        String filename = System.getProperty("user.dir")
                + "/../scripts/jira-connector/jira-conn.properties";

        properties = new Properties();
        properties.load(new FileInputStream(filename));

    }

    @Test
    public void testGetAllLablesFromValidLabelUrl() {
        List<String> result = JiraRESTClient.getAllLables(properties
                .getProperty("label_url"));
        assertTrue(result.size() > 0);
    }

    @Test(expected = WebApplicationException.class)
    public void testGetAllLablesFromInValidLabelUrl() {
        JiraRESTClient.getAllLables("");
    }

    @Test
    public void testGetIssuesForValidLabelAndAuthorizedUser() {
        List<Issue> issues = JiraRESTClient.getIssues(
                properties.getProperty("url"),
                properties.getProperty("username"),
                properties.getProperty("password"), "rest/api/latest/search",
                "labels=Intrasprint");
        assertTrue(issues.size() > 0);
    }

    @Test(expected = RuntimeException.class)
    public void testGetIssuesForValidLabelButUnAuthorizedUser() {
        JiraRESTClient.getIssues(properties.getProperty("url"), "", "",
                "rest/api/latest/search", "labels=Intrasprint");
    }

    @Test
    public void testGetIssuesForEmptyLabel() {
        List<Issue> issues = JiraRESTClient.getIssues(
                properties.getProperty("url"),
                properties.getProperty("username"),
                properties.getProperty("password"), "rest/api/latest/search",
                "");
        assertTrue(issues.size() > 0);
    }
}
